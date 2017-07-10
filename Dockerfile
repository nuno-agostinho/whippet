FROM ubuntu:16.10
MAINTAINER Nuno Agostinho <nunodanielagostinho@gmail.com>

ENV SW="/root/software"
RUN mkdir -p ${SW}
WORKDIR ${SW}

ENV whippet="Whippet.jl"
ADD ${whippet} .
WORKDIR ${whippet}

RUN apt-get update
RUN apt-get install -y --no-install-recommends julia
RUN julia dependencies.jl

WORKDIR ${SW}