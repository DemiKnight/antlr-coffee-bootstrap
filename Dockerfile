FROM ubuntu
MAINTAINER alex@alexknight.co.uk

# Get git
RUN apt-get update && apt-get install -y git

# Get coffee
RUN mkdir /home/code
RUN cd /home/code
RUN git clone "https://github.com/ryanjpc/CoffeeRelease.git" /home/code/bin
RUN chmod u+x /home/code/bin/coffee.out
ENV PATH=/home/code/bin/:$PATH

WORKDIR /home/code

COPY ./src /home/code

# Might need to be changed if we can't provide the file when executing
#ENTRYPOINT /home/code/bin/coffee.out

CMD ["/home/code/bin/coffee.out", "/home/code/test.coffee"]
#CMD ["coffee.out", "test.coffee"]