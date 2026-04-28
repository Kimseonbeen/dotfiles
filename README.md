# dotfiles

개인 개발 환경 설정 파일 모음

## 구성

| 파일 | 설명 |
|------|------|
| `tmux/.tmux.conf` | tmux Dracula 테마, 상태바, 마우스 설정 |
| `ghostty/config` | Ghostty Dracula 테마, 키바인딩 |

## 단축키

### Ghostty + tmux

| 단축키 | 동작 |
|--------|------|
| `Cmd+N` | 새 tmux 윈도우 |
| `Cmd+1~9` | tmux 윈도우 전환 |
| 두 손가락 스크롤 | 터미널 스크롤 (copy mode 진입) |
| 드래그 | 텍스트 선택 + 클립보드 복사 |
| 더블클릭 | 단어 선택 + 클립보드 복사 |
| `q` / `Esc` | copy mode 종료 |

## 설치

새 맥에서 아래 명령어 한 줄로 전체 환경 복구:

```bash
curl -fsSL https://raw.githubusercontent.com/Kimseonbeen/dotfiles/main/install.sh | bash
```

설치 순서:
1. Homebrew 설치
2. git, tmux, gh 패키지 설치
3. dotfiles 클론 (`~/dotfiles`)
4. 심볼릭 링크 연결
   - `~/.tmux.conf` → `~/dotfiles/tmux/.tmux.conf`
   - `~/.config/ghostty/config` → `~/dotfiles/ghostty/config`

## 설정 변경 후 동기화

심볼릭 링크로 연결되어 있어 설정 파일 수정 시 dotfiles에 바로 반영됩니다.

```bash
cd ~/dotfiles
git add .
git commit -m "변경 내용"
git push
```
