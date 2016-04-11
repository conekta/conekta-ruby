FROM ubuntu:14.04

MAINTAINER Leo Fischer

RUN apt-get update
RUN apt-get install -y vim git wget curl

#setup test_user user
RUN useradd -ms /bin/bash test_user
RUN echo "test_user:sudo" | chpasswd
RUN usermod -aG sudo test_user
RUN mkdir -p /data/db/
RUN chown test_user /data/db
RUN sudo echo "test_user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER test_user
ENV HOME /home/test_user

RUN echo "set tabstop=2" >> ~/.vimrc
RUN echo "set shiftwidth=2" >> ~/.vimrc
RUN echo "set softtabstop=2" >> ~/.vimrc

#install RVM and Ruby
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | sudo bash -s stable
RUN sudo usermod -a -G rvm test_user
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 1.9.3"
RUN /bin/bash -l -c "rvm install 2.1.9"
RUN /bin/bash -l -c "rvm install 2.2.4"
RUN /bin/bash -l -c "rvm install 2.3.0"

#configure external fs links
WORKDIR $HOME

#One Time Staging Steps
RUN git clone https://github.com/conekta/conekta-ruby

WORKDIR $HOME/conekta-ruby

RUN /bin/bash -l -c "rvm use 1.9.3 && gem install bundle && bundle install"
RUN /bin/bash -l -c "rvm use 2.1.9 && gem install bundle && bundle install"
RUN /bin/bash -l -c "rvm use 2.2.4 && gem install bundle && bundle install"
RUN /bin/bash -l -c "rvm use 2.3.0 && gem install bundle && bundle install"
