FROM python:3.9-slim

WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone the specific branch from the GitHub repository
RUN git clone --branch patch-1 https://github.com/Jorman/autoremove-torrents.git

# Navigate into the cloned directory
WORKDIR /app/autoremove-torrents

# Install the package
RUN python setup.py install

# Navigate back to the app directory
WORKDIR /app

COPY . /app
COPY docker-entrypoint.sh /app

RUN chmod +x /app/docker-entrypoint.sh

ENTRYPOINT ["/app/docker-entrypoint.sh"]
