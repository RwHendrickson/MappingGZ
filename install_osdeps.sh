# install Postgresql from offical repo:  

echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list 
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt -y update

# install nvidia keys:

apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

# add [arch=amd64] between deb and url 
vi /etc/apt/sources.list.d/pgdg.list 
sudo apt-get update
sudo apt -y install postgresql-14 

# install auth model and allow remote logins for postgresql.  This allows pgadmin for remote login as well
sudo sed -i '/^host/s/ident/md5/' /etc/postgresql/14/main/pg_hba.conf
sudo sed -i '/^local/s/peer/trust/' /etc/postgresql/14/main/pg_hba.conf
systemctl restart postgresql 

# pgadmin4 install
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
# sudo apt install pgadmin4 # this installs the web client too
sudo apt install pgadmin4-desktop


# install postgis 3 for pg14
sudo apt-get install -y postgresql-14-postgis-3  postgresql-14-postgis-3-scripts  postgresql-14-pgrouting  postgresql-14-pgrouting-scripts
