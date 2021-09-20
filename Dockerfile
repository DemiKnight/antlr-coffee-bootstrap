FROM ubuntu
MAINTAINER alex@alexknight.co.uk

# Get git
RUN apt-get update
RUN apt-get install -y git

# Get coffee \
RUN mkdir /home/code
RUN cd /home/code \
    git clone "https://github.com/ryanjpc/CoffeeRelease.git" . \
    chmod +u coffee.out

WORKDIR /home/code
#
#RUN /home/code/coffee.out

#CMD ["./coffee.out"]