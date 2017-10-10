FROM perl:latest

# install system libs
RUN set -x \
	&& apt-get update \
	&& apt-get install -y \
		libmagic-dev \
		libjpeg-dev \
		libpng++-dev \
		libpng12-dev \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y

# install the project's modules
COPY cpanfile /build/
RUN  cd /build && cpanm --installdeps -n . && rm -rf /root/.cpanm /build/*

# copy source code
COPY . /app

# a data volume
VOLUME /data

# set the workdir
WORKDIR /
