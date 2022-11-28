sudo loadkeys si

mkdir /home/documents
mkdir /home/downloads
mkdir /home/pictures
mkdir /home/videos

for i in {1..5}
do
    mkdir /folder%i
done

for i in {1..5}
do
    sudo adduser User%i
    usermod -aG sudo User%i
done

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install nginx
sudo apt-get install git
sudo apt-get install net-tools
sudo apt-get install ufw

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-compose-plugin

