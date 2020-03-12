FROM i686/ubuntu
WORKDIR /challenges
RUN apt-get update && apt-get install -y \
    python2.7 \
    git \
    zsh \
    wget
RUN wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ohmyzsh.sh; \
    export RUNZSH=no; \
    sh ohmyzsh.sh; \
    rm ohmyzsh.sh
RUN ln -s /usr/bin/python2.7 /usr/bin/python2 && \
    ln -s /usr/bin/python2.7 /usr/bin/python
COPY binaries/* /challenges/
