export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime

doas rc-service wpa_supplicant start
dbus-run-session sway

