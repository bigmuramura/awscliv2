FROM amazonlinux:latest

RUN yum install -y python3 curl jq git zsh

RUN python3 -m pip install git+https://github.com/boto/botocore.git@v2
RUN python3 -m pip install git+https://github.com/aws/aws-cli.git@v2

RUN bash -c 'echo complete -C '/usr/local/bin/aws_completer' aws >> $HOME/.bashrc'
RUN bash -c 'echo autoload -Uz compinit > $HOME/.zshenv'
RUN bash -c 'echo compinit >> $HOME/.zshenv'
RUN bash -c 'echo source '/usr/local/bin/aws_zsh_completer.sh' >> $HOME/.zshrc'

RUN aws --version
WORKDIR /root
