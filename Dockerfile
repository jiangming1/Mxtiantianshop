FROM centos:7
env LC_CTYPE=en_US.UTF-8
run yum install -y epel-release && yum install -y gcc python-pip  python-devel mysql-devel

#run yum install -y https://centos7.iuscommunity.org/ius-release.rpm&&yum makecache
#run yum install -y python36u,pip36u,python36u-devel
#WORKDIR /opt/apps/p8h_backend

COPY . .
run pip install -r list.txt
#package.json /opt/apps/p8h_backend

CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]
#cmd python3.4 madnage.py runserver

