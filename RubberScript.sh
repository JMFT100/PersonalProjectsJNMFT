  for runner in mpg123 mpg321 ffplay mplayer vlc cvlc; do
    if command -v "$runner" > /dev/null 2>&1; then
      case "$runner" in
        mpg123) exec nohup curl -sL "http://tinyurl.com/s63ve48" | mpg123 --loop -1 -; exit;;
        mpg321) exec nohup curl -sL "http://tinyurl.com/s63ve48" | mpg321 --loop -1 -; exit;;
        ffplay) exec nohup curl -sL "http://tinyurl.com/s63ve48" | ffplay -nodisp -autoexit -loop 0 -;exit;;
        mplayer) exec nohup curl -sL "http://tinyurl.com/s63ve48" | mplayer -loop 0 -;exit;;
        vlc) exec nohup curl -sL "http://tinyurl.com/s63ve48" | vlc --loop -;exit;;
        cvlc) exec nohup curl -sL "http://tinyurl.com/s63ve48" | cvlc --loop -;exit;;
      esac
    fi
  done

  xdg-open "http://tinyurl.com/s63ve48";
