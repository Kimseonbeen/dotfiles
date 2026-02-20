# Auto-attach or create tmux session on shell start
if [ -z "$TMUX" ]; then
  tmux attach 2>/dev/null || tmux
fi
