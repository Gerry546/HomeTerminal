if [ -f /etc/chromium_env ]; then
  export $(cat /etc/chromium_env | xargs)
fi
