test -e /usr/local/bin/docker-compose || \
  curl -sSL https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` \
  | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
test -e /etc/bash_completion.d/docker-compose || \
  curl -sSL https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose \
  | sudo tee /etc/bash_completion.d/docker-compose > /dev/null

