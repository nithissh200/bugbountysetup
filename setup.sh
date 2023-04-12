#!/bin/bash

# Update and upgrade the system
sudo apt update -y && sudo apt upgrade -y

# Install dependencies
sudo apt install python3 python3-pip npm ruby nmap golang -y

# Add the gopath to .bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
source ~/.bashrc

# Install Nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# Install Uncover
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest

# Install naabu
sudo apt install -y libpcap-dev
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Install Notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest

# Install mapcidr
go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

# Install Shuffledns
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest

# Install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Install Subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Install Katana
go install github.com/projectdiscovery/katana/cmd/katana@latest

# Install AlterX
go install github.com/projectdiscovery/alterx/cmd/alterx@latest

# Install Massdns
mkdir ~/tools && cd ~/tools
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo make install

# Install Puredns
go install github.com/d3mondev/puredns/v2@latest

# Install GoSpider
GO111MODULE=on go install github.com/jaeles-project/gospider@latest

# Install Hakrawler
go install github.com/hakluke/hakrawler@latest

# Install Crobat
go install github.com/cgboal/sonarsearch/cmd/crobat@latest

# Install getJS
go install github.com/003random/getJS@latest

# Install Cent
GO111MODULE=on go install -v github.com/xm1k3/cent@latest

# Install aquatone
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip
sudo mv aquatone /usr/bin && rm LICENSE.txt README.md aquatone_linux_amd64_1.7.0.zip

# Download wordlists
mkdir ~/wordlists && cd ~/wordlists
wget https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt
wget https://wordlists-cdn.assetnote.io/data/manual/raft-large-directories.txt
