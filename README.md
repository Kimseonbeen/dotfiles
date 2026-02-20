# dotfiles

개인 개발 환경 설정 파일 모음

## 구성

| 파일 | 설명 |
|------|------|
| `.tmux.conf` | tmux Dracula 테마, 상태바 설정 |
| `.zshrc` | Ghostty 실행 시 tmux 자동 attach |
| `ghostty/config` | Ghostty Dracula 테마, 키바인딩 |

## 단축키

### Ghostty + tmux

| 단축키 | 동작 |
|--------|------|
| `cmd+n` | 새 tmux 윈도우 |
| `cmd+1~9` | tmux 윈도우 전환 |

## 설치

새 맥에서 아래 명령어 한 줄로 복구:

```bash
curl -fsSL https://raw.githubusercontent.com/Kimseonbeen/dotfiles/main/install.sh | bash
```

## 설정 변경 후 동기화

```bash
cd ~/dotfiles
git add .
git commit -m "변경 내용"
git push
```
