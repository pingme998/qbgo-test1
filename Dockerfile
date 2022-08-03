FROM ubuntu
RUN apt update 
ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive
RUN apt upgrade -y
RUN apt install curl unzip jupyter golang git nginx -y

#RUN curl -L  https://github.com/userdocs/qbittorrent-nox-static/releases/download/release-4.4.3.1_v2.0.7/x86_64-qbittorrent-nox >qbn
CMD git clone "$GITCLONE"; RAWGITNAME=$(echo "$GITCLONE" |sed 's@https://\|github.com\|/@\n@g' |sed '/^[[:space:]]*$/d'); RAWGITNO=$(echo "$GITCLONE" |sed 's@https://\|github.com\|/@\n@g' |sed '/^[[:space:]]*$/d' |wc -l); if [ $RAWGITNO -ge 2 ]; then GITDIR=$(echo "$RAWGITNAME" |sed -n '2p'); else GITDIR=$(echo "$RAWGITNAME"); fi; echo $GITDIR; cd /$GITDIR/script chmod +x /$GITDIR/script/permission.sh; chmod +x /$GITDIR/script/start.sh
