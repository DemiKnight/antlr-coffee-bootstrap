FROM ubuntu

# Get git
RUN apt-get update && apt-get install -y git gcc

# Get coffee
RUN git clone "https://github.com/ryanjpc/CoffeeRelease.git" /tmp/bin
RUN chmod u+x /tmp/bin/coffee.out

# Manage Source code
COPY coffee /tmp
WORKDIR /tmp
ENTRYPOINT ["/tmp/bin/coffee.out"]

CMD ["main.coffee"]