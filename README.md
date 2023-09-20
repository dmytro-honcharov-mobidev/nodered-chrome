# NodeRed Flows

NodeRed Flows  - a NodeRed based solution to automate different business processes.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing
purposes. See deployment for notes on how to deploy the project on a live system.


## Prerequisites

This project requires ```docker``` and ```doker-compose``` to be installed.

## Docker

* Install [Docker](https://docs.docker.com/install/)

[How to install Docker on Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/):

```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
```

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

```
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
```

```
sudo apt-get update
```
```
sudo apt-get update
```

```
sudo apt-get -y install docker-ce
```

Create the docker group

```
sudo groupadd docker
sudo usermod -aG docker $USER
```

[How to install Docker on Mac](https://docs.docker.com/docker-for-mac/install/)

* Install [Docker Compose](https://docs.docker.com/compose/install/)

How to install on Ubuntu:

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
```
sudo chmod +x /usr/local/bin/docker-compose
```

* Install [docker-hostmanager](https://github.com/iamluc/docker-hostmanager) (optional)

[How to install on Ubuntu](https://github.com/iamluc/docker-hostmanager#linux):

```
docker run -d --name docker-hostmanager --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /etc/hosts:/hosts iamluc/docker-hostmanager
```

**WARNING**: docker-hostmanager is not working on Mac

## Run project with Docker

### Copy envs by running:
```
cp .env_example .env
```
and update .env file with correct settings

### Build docker image by running:
```
make build
```

### Start container by running:
```
make start
```

### Stop container by running:
```
make stop
```
