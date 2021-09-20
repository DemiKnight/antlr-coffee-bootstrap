Coffee lang project
---

Intended to be a utility for running coffee language files. See [Coffee Lang](https://github.com/ryanjpc/CoffeeRelease/).

# Required
- [Docker](https://www.docker.com/products/docker-desktop)

# Instructions
Everytime a file is changed, run:
- `docker build -t coffee-project .`
- `docker run --name coffee-run coffee-project {FILE}`
  - `{FILE}` = Optional, another file in `./coffee`. If omitted, will run `main.coffee`.