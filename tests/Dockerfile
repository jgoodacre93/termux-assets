FROM xeffyr/termux:x86_64

WORKDIR /data/data/com.termux/files/home/

COPY . termux-assets

RUN termux-assets/init.sh

ENTRYPOINT [ "zsh" ]
