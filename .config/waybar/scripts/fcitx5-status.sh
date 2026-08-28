cur="$(fcitx5-remote -n 2>/dev/null || true)"

if [ -z "$cur" ]; then
  echo '{"text":"?","class":"unknown"}'
  exit 0
fi

case "$cur" in
  keyboard-us)
    echo '{"text":"EN","tooltip":"English (US)","class":"en"}'
    ;;
  mozc)
    echo '{"text":"JP","tooltip":"Japanese (JP)","class":"mozc"}'
    ;;
  *)
    echo "{\"text\":\"${cur}\",\"class\":\"unknown\"}"
    ;;
esac
