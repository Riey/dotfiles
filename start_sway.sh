export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime

doas rc-service net.wlp40s0f3u2 start
dbus-run-session sway

