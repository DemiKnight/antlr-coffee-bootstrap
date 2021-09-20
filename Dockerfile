FROM ubuntu
MAINTAINER alex@alexknight.co.uk

# Get git
RUN apt-get update
RUN apt-get install -y git

# Get coffee
RUN mkdir /home/code
RUN cd /home/code

RUN git clone "https://github.com/ryanjpc/CoffeeRelease.git" /home/code

RUN chmod u+x /home/code/coffee.out

WORKDIR /home/code
