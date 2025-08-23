curl -sL "http://tinyurl.com/s63ve48" > rick.mp3
xdg-open "https://fakeupdate.net/sarcastic/"

  for runner in mpg123 mpg321 ffplay mplayer vlc cvlc; do
    if command -v "$runner" > /dev/null 2>&1; then
      case "$runner" in
        mpg123) nohup sh -c 'mpg123 --loop -1 rick.mp3' > /dev/null 2>&1 & exit;;
        mpg321) nohup sh -c 'mpg321 --loop -1 rick.mp3' > /dev/null 2>&1 & exit;;
        ffplay) nohup sh -c 'ffplay -nodisp -autoexit -loop 0 rick.mp3' > /dev/null 2>&1 & exit;;
        mplayer) nohup sh -c 'mplayer -loop 0 rick.mp3' > /dev/null 2>&1 & exit;;
        vlc) nohup sh -c 'vlc --loop rick.mp3' > /dev/null 2>&1 & exit;;
        cvlc) nohup sh -c 'cvlc --loop rick.mp3' >/dev/null 2>&1 & exit;;
      esac
    fi
  done

  xdg-open "http://tinyurl.com/s63ve48";

