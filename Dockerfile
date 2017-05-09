FROM gmartsenkov/docker_dev
MAINTAINER Georgi Martsenkov

ENV EDITOR vim
RUN apt-get install -y zsh
RUN apt-get install -y git-core
RUN apt-get install -y bc
RUN apt-get install -y libncursesw5-dev
RUN apt-get install -y libncurses-dev
RUN apt-get install -y libgpm-dev
RUN apt-get install -y software-properties-common python-software-properties

# Install zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
RUN chsh -s `which zsh` root
# Install Golang
RUN apt-get install -y golang-go
ENV GOPATH /home/gogo/Development/.go

RUN mkdir /home/gogo
RUN touch /home/gogo/.viminfo
WORKDIR /home/gogo
ENV HOME /home/gogo
ADD ./config/ /home/gogo/
RUN wget -P /bin/ https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev
RUN chmod +x /bin/screenfetch-dev
