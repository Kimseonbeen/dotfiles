#!/bin/bash
# ==============================================================================
# Dotfiles Install Script
# ==============================================================================

set -e

DOTFILES_DIR="$HOME/dotfiles"
REPO="https://github.com/Kimseonbeen/dotfiles"

echo "==> Dotfiles 설치 시작"

# ------------------------------------------------------------------------------
# Homebrew
# ------------------------------------------------------------------------------
if ! command -v brew &>/dev/null; then
  echo "==> Homebrew 설치 중..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "==> Homebrew 이미 설치됨"
fi

# ------------------------------------------------------------------------------
# 필수 패키지
# ------------------------------------------------------------------------------
echo "==> 패키지 설치 중..."
brew install git tmux gh

# ------------------------------------------------------------------------------
# Dotfiles 클론
# ------------------------------------------------------------------------------
if [ ! -d "$DOTFILES_DIR" ]; then
  echo "==> dotfiles 클론 중..."
  git clone "$REPO" "$DOTFILES_DIR"
else
  echo "==> dotfiles 이미 존재함, pull 중..."
  git -C "$DOTFILES_DIR" pull
fi

# ------------------------------------------------------------------------------
# 설정 파일 연결
# ------------------------------------------------------------------------------
echo "==> 설정 파일 복사 중..."

cp "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
cp "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config/ghostty"
cp "$DOTFILES_DIR/ghostty/config" "$HOME/.config/ghostty/config"

# ------------------------------------------------------------------------------
# 완료
# ------------------------------------------------------------------------------
echo ""
echo "✓ 설치 완료!"
echo "  Ghostty 재시작 후 새 탭 열면 tmux 자동 실행됩니다."
