FROM kaixhin/torch:latest
MAINTAINER kvvzr "kwzr@twinkrun.net"

RUN apt-get install -y wget libpng-dev libprotobuf-dev protobuf-compiler
RUN git clone --depth 1 https://github.com/jcjohnson/neural-style.git
RUN bash -c "/root/torch/install/bin/luarocks install loadcaffe"
RUN cd neural-style && sh models/download_models.sh

WORKDIR neural-style
VOLUME neural-style
