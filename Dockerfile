FROM gmartsenkov/docker_dev
MAINTAINER Georgi Martsenkov

ENV EDITOR vim
RUN apt-get install -y zsh
RUN apt-get install -y git-core
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
RUN chsh -s `which zsh`
