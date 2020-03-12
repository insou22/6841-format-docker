FROM i686/ubuntu
WORKDIR /challenges
RUN apt-get update && apt-get install -y \
	python2.7 \
	zsh
RUN ln -s /usr/bin/python2.7 /usr/bin/python2 && \
	ln -s /usr/bin/python2.7 /usr/bin/python
COPY binaries/* /challenges/
