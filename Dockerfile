FROM amazonlinux:2

RUN yum install -y python3 curl jq git zsh nc iputils

RUN python3 -m pip install git+https://github.com/boto/botocore.git@v2
RUN python3 -m pip install git+https://github.com/aws/aws-cli.git@v2

RUN echo $'complete -C /usr/local/bin/aws_completer aws' >> $HOME/.bashrc
RUN echo -e $'\
autoload -Uz compinit\n\
compinit\
'>> $HOME/.zshenv
RUN echo $'source /usr/local/bin/aws_zsh_completer.sh' >> $HOME/.zshrc

WORKDIR /root
