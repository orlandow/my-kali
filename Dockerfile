FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive

# update
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# install zsh
RUN apt-get -y install zsh zsh-syntax-highlighting zsh-autosuggestions
# COPY config/.zshrc /root/.zshrc

# install ohmyzsh?
# RUN wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# install kali top 10 and others
RUN apt-get -y install kali-tools-top10 kali-tools-passwords

# install other pentesting tools
RUN apt-get -y install iputils-ping man-db exploitdb gobuster wordlists nikto netcat whois wpscan seclists

# install languages and frameworks
RUN apt-get -y install python3-pip nodejs php npm

# install ngrok
RUN npm i -g ngrok

# install tools and editors
RUN apt-get -y install vim tmux

WORKDIR /root

ENTRYPOINT ["/bin/zsh"]
