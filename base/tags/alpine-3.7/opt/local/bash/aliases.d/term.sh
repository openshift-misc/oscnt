if [ -z "$TERM" -o "$TERM" = "dumb" -a -n "$PS1" ]; then
  export TERM=xterm
fi
