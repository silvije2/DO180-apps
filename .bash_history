exit
git config --global credential.helper cache
lab-configure 
lab-configure -d
lab-configure 
ls
touch token
pico token 
nano token
nano github
ls
 git clone https://github.com/nesto/DO180-apps
 git clone https://github.com/rhtestalgebra1/DO180-apps
ls
cd DO180-apps/
ls -al
git status
git checkout -b testbranch
echo "DO180" > TEST
git add .
git commit -m
git commit -m "DO180"
git push --set-upstream origin testbranch
ls -al
echo "OCP4" > TEST
 git add .
git commit -m "OCP4"
 git push
head README.md
podman search nginx
podman pull docker.io/ubuntu/nginx
ls -al
podman images
podman rundocker.io/ubuntu/nginx
podman run docker.io/ubuntu/nginx
podman ps
podman ps -a
podman run -p 8080:80 docker.io/ubuntu/nginx
podman run -p 127.0.0.1:8081:80 docker.io/ubuntu/nginx
cat /etc/group
cat /etc/group | grep 27
cat /etc/passwd | grep 27
cat /etc/passwd
podman port
podman port -l
podman run --name mysql-custom > -e MYSQL_USER=redhat -e MYSQL_PASSWORD=r3dh4t > -e MYSQL_ROOT_PASSWORD=r3dh4t > -d registry.redhat.io/rhel8/mysql-80
podman login registry.redhat.io
podman run --name mysql-custom > -e MYSQL_USER=redhat -e MYSQL_PASSWORD=r3dh4t > -e MYSQL_ROOT_PASSWORD=r3dh4t > -d registry.redhat.io/rhel8/mysql-80
podman run --name mysql-custom  -e MYSQL_USER=redhat -e MYSQL_PASSWORD=r3dh4t  -e MYSQL_ROOT_PASSWORD=r3dh4t  -d registry.redhat.io/rhel8/mysql-80
podman ps
cd
 lab container-create start
podman run --name mysql-basic -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 -d registry.redhat.io/rhel8/mysql-80:1
podman ps
podman stop mysql-custom 
podman ps
lab container-review start
podman run quay.io/redhattraining/httpd-parent:2.4
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
lab container-review grade
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
podman ps
podman exec httpd-basic
podman images
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
podman exec --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
podman exec  -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
podman exec quay.io/redhattraining/httpd-parent:2.4
podman images
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
podman rm httpd-basic   
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
lab container-review grade
podman rm httpd-basic   
podman run --name httpd-basic -p 8080:80 quay.io/redhattraining/httpd-parent:2.4
lab container-review grade
podman rm httpd-basic   
podman run --name httpd-basic -p 8080:80 -d quay.io/redhattraining/httpd-parent:2.4
lab container-review grade
lab container-review finish
lab manage-lifecycle start
podman login registry.redhat.io
podman run --name mysql-db  registry.redhat.io/rhel8/mysql-80:1
podman run --name mysql-basic -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 -d registry.redhat.io/rhel8/mysql-80:1
lab manage-storage start
 mkdir -vp /home/student/local/mysql
sudo semanage fcontext -a  -t container_file_t 
sudo semanage fcontext -a  -t container_file_t '/home/student/local/mysql(/.*)?'
 sudo restorecon -R /home/student/local/mysql
 ls -ldZ /home/student/local/mysql
 podman unshare chown 27:27 /home/student/local/mysql
 podman pull registry.redhat.io/rhel8/mysql-80:1
podman run --name  persist-db -d -v /home/student/loc al/mysql:/var/lib/mysql/data -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55  -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 registry.redhat.io/rhel8/mysql-80:1
podman run --name  persist-db -d -v /home/student/local/mysql:/var/lib/mysql/data -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55  -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 registry.redhat.io/rhel8/mysql-80:1
podman ps --format="{{.ID}} {{.Names}} {{.Status}}"
 ls -ld /home/student/local/mysql/items
podman unshare ls -ld /home/student/local/mysql/items
 lab manage-storage finish
lab manage-networking start

 mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items < /home/student/DO180/labs/manage-networking/db.sql
podman exec -it mysqldb-port  mysql -uroot items -e "SELECT * FROM Item"
mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306  items -e "SELECT * FROM Item"
podman exec -it mysqldb-port /bin/bash
lab manage-networking finish
 lab manage-review start
 lab manage-review grade
 mkdir -vp /home/student/local/mysql
sudo semanage fcontext -a -t container_file_t '/home/student/local/mysql(/.*)?'
sudo restorecon -R /home/student/local/mysql
 podman unshare chown -Rv 27:27 /home/student/local/mysql
curl http://localhost:8081
podman stop lucid_ellis 
curl http://localhost:8081
 sudo ps -ef | grep "sleep 1000"
podman ps
podman exec /bin/bash httpd-basic
podman exec httpd-basic /bin/bash
podman exec -it httpd-basic /bin/bash
podman exec mysql /bin/bash -c 'mysql -uuser1 -pmypa55 items < /db.sql'
podman exec mysql-basic /bin/bash -c 'mysql -uuser1 -pmypa55 items < /db.sql'
podman run --name mysql-2 -it registry.redhat.io/rhel8/mysql-80:1 /bin/bash
podman ps -a
podman exec mysql-basic  /bin/bash -c 'mysql -uuser1 -pmypa55 -e "select * from items.Projects;"'
 lab manage-lifecycle finish
cd
mkdir /home/student/dbfiles
podman unshare chown -R 27:27 /home/student/dbfiles
 sudo semanage fcontext -a -t container_file_t '/home/student/dbfiles(/.*)?'
sudo restorecon -Rv /home/student/dbfiles
 podman run -v /home/student/dbfiles:/var/lib/mysql rhmap47/mysql
sudo netstat -tlnp
podman ps
podman exec -it lucid_ellis  /bin/bash
podman exec -it mysql-basic /bin/bash
lab container-create finish
 lab container-root
 lab container-rootless start
sudo podman run --rm --name asroot -it registry.access.redhat.com/ubi8:latest /bin/bash
podman ps
 podman run --rm --name asroot -it registry.access.redhat.com/ubi8:latest /bin/bash
lab container-rootless fin
lab container-rootless finish
 curl http://localhost:8080
 podman logs mysql-db
podman ps
podman cp ~/DO180/labs/manage-lifecycle/db.sql mysql:/
podman cp ~/DO180/labs/manage-lifecycle/db.sql mysql-basic:/
podman ps
ls
 lab manage-review start
podman run --name mysql-1 -p 13306:3306  -d -v /home/student/local/mysql:/var/lib/mysql/data  -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 registry.redhat.io/rhel8/mysql-80:1
podman login registry.redhat.io
podman run --name mysql-1 -p 13306:3306  -d -v /home/student/local/mysql:/var/lib/mysql/data  -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 registry.redhat.io/rhel8/mysql-80:1
podman ps --format="{{.ID}} {{.Names}}"
 mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items < /home/student/DO180/labs/manage-review/db.sql
 mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items -e "SELECT * FROM Item"
podman stop mysql-1
podman run --name mysql-2 -p 13306:3306  -d -v /home/student/local/mysql:/var/lib/mysql/data  -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 registry.redhat.io/rhel8/mysql-80:1
 podman ps --format="{{.ID}} {{.Names}}"
podman ps -a > /tmp/my-containers
podman exec -it mysql-2 /bin/bash
 mysql -uuser1 -h workstation.lab.example.com -pmypa55 -P13306 items
podman rm mysql-1
 lab manage-review grade
 lab manage-review finish
mysql -uuser1 -pmypa55 --protocol tcp -h localhost
lab image-operations start
 podman login quay.io
podman run -d --name official-httpd -p 8180:80 quay.io/redhattraining/httpd-parent
podman exec -it off
podman exec -it official-httpd /bin/bash
 curl 127.0.0.1:8180/do180.html
podman diff official-httpd
podman stop official-httpd
 podman commit -a 'Silvije' official-httpd do180-custom-httpd
podman images
source /usr/local/etc/ocp4.config
podman tag do180-custom-httpd quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
podman images
 podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
podman pull -q quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
podman run -d --name test-httpd -p 8280:80 ${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
 curl http://localhost:8280/do180.html
 lab image-operations finish
 lab image-review start
podman pull quay.io/redhattraining/nginx:1.17
 podman images
podman run --name official-nginx -d -p 8080:80 quay.io/redhattraining/nginx:1.17
 podman exec -it official-nginx /bin/bash
curl 127.0.0.1:8080
podman stop official-nginx
podman commit -a  'Silvije' official-nginx do180/mynginx:v1.0-SNAPSHOT
podman images
podman run --name official-nginx-dev -d -p 8080:80 do180/mynginx:v1.0-SNAPSHOT
 podman exec -it official-nginx-dev /bin/bash
 curl 127.0.0.1:8080
 podman stop official-nginx-dev
podman commit -a  'Silvije'  official-nginx-dev do180/mynginx:v1.0
 podman images
 podman ps -a --format="{{.ID}} {{.Names}} {{.Status}}"
podman rm official-nginx-dev
 podman ps -a --format="{{.ID}} {{.Names}} {{.Status}}"
podman rmi do180/mynginx:v1.0-SNAPSHOT
 podman images
podman run -d --name my-nginx
podman run -d --name my-nginx -p 8280:80 do180/mynginx:v1.0
curl 127.0.
curl 127.0.0.1:8280
lab image-review grade
 lab image-review finish
man alias
alias
alias haha='echo hakeru'
haha
haha asdf
alias haha=
alias
lab dockerfile-create start
 vim ~/DO180/labs/dockerfile-create/Containerfile
 cd ~/DO180/labs/dockerfile-create
podman build --layers=false -t do180/apache .
podman images
 podman run --name lab -apache -d -p 10080:80 do180/apache
 podman run --name lab-apache -d -p 10080:80 do180/apache
 podman ps
curl -s 127.0.0.1:10080
lab dockerfile-create finish
 lab dockerfile-review start
 cd ~/DO180/labs/dockerfile-review
vim Containerfile
podman build --layers=false -t do180/custom-apache .
podman images
podman run -d --name containerfile -p 20080:8080 do180/custom-apache
 podman ps
 curl -s 127.0.0.1:20080
 lab dockerfile-review grade
lab dockerfile-review finish
cat /proc/cpuinfo 
lab openshift-resources start
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER}  -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
 oc new-project ${RHT_OCP4_DEV_USER}-mysql-openshift
oc new-app --template=mysql-persistent-p MYSQL_USER=user1 -p MYSQL_PASSWORD=mypa55 -p MYSQL_DATABASE=testdb -p MYSQL_ROOT_PASSWORD=r00tpa55 -p VOLUME_CAPACITY=10Gi
oc new-app --template=mysql-persistent -p MYSQL_USER=user1 -p MYSQL_PASSWORD=mypa55 -p MYSQL_DATABASE=testdb -p MYSQL_ROOT_PASSWORD=r00tpa55 -p VOLUME_CAPACITY=10Gi
oc status
oc gett all
oc get all
oc get pods
oc describe pod mysql-1-5j6hj
 oc get svc
oc describe service mysql
 oc get pvc
oc get pods
 oc port-forward mysql-1-5j6hj 3306:3306
 oc delete project ${RHT_OCP4_DEV_USER}-mysql-openshift
 lab openshift-resources finish
 lab openshift-routes 
 lab openshift-routes start
source /usr/local/etc/
source /usr/local/etc/ocp4.config
cat /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-route
oc new-app --image=quay.io/redhattraining/php-hello-dockerfile --name php-helloworld
oc get pods -w
oc logs -f php-helloworld-
oc logs -f php-helloworld-85484585d6-hwjvl
oc describe svc/php-helloworld
oc expose svc/php-helloworld
oc gett all
oc get all
 oc describe route
curl php-helloworld-${RHT_OCP4_DEV_USER}-route.${RHT_OCP4_WILDCARD_DOMAIN}
oc delete route/php-helloworld
 oc expose svc/php-helloworld --name=${RHT_OCP4_DEV_USER}-xyz
 oc describe route
curl ${RHT_OCP4_DEV_USER}-xyz-${RHT_OCP4_DEV_USER}-route.${RHT_OCP4_WILDCARD_DOMAIN}
lab openshift-routes finish
 lab openshift-s2i start
lab-configure
 lab openshift-s2i start
cd DO180-apps
ls
ls -al
git status
rm "-d"
rm - "-d"
mc
rm -- -d
rm -- -e
git status
 lab openshift-s2i start
git checkout master
git checkout -b s2i
 git push -u origin s2i
cat ../token 
cat git
ls -al .. 
cat ../github
 git push -u origin s2i
cat ../token
 git push -u origin s2i
ls
cd php-helloworld/
ls
cat index.php 
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
 oc new-project ${RHT_OCP4_DEV_USER}-s2i
oc new-app php:7.3 --name=php-helloworld https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i --context-dir php-helloworld
oc new-app php:7.3 --name=php-helloworld https://github.com/rhtestalgebra1/DO180-apps#s2i --context-dir php-helloworld
oc get pods
oc new-app php:7.3 --name=php-helloworld https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i --context-dir php-helloworld
cd
nano token
nano github
rm github 
lab-configure 
git config --global credential.helper cache
ls
rm -rf DO180-apps/
git clone https://github.com/silvije2/DO180-apps
cd DO180-apps
git sta
git status
git checkout -b testbranch
echo "DO180" > TEST
git add .
git commit -m "DO180"
cat ../token 
git push --set-upstream origin testbranch
cd
 lab openshift-s2i start
cd ~/DO180-apps
git checkout master
git checkout -b s2i
 git push -u origin s2i
cd php-helloworld/
cat index.php 
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-s2i
 oc new-app php:7.3 --name=php-helloworld https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i --context-dir php-helloworld
oc status
oc get pods
 oc logs --all-containers -f php-helloworld-1-build
 oc describe deployment/php-helloworld
 oc expose service php-helloworld  --name ${RHT_OCP4_DEV_USER}-helloworld
 oc get route -o jsonpath='{..spec.host}{"\n"}'
curl -s ${RHT_OCP4_DEV_USER}-helloworld-${RHT_OCP4_DEV_USER}-s2i.${RHT_OCP4_WILDCARD_DOMAIN}
 cd ~/DO180-apps/php-helloworld
nano index.php 
git add .
 git commit -m 'Changed index page contents.'
git push origin s2i
oc start-build php-helloworld
oc get pods
curl -s ${RHT_OCP4_DEV_USER}-helloworld-${RHT_OCP4_DEV_USER}-s2i.${RHT_OCP4_WILDCARD_DOMAIN}
oc logs php-helloworld-2-build -f
 lab openshift-s2i finish
 lab openshift-webconsole start
cd
cd ~/DO180-apps
 git checkout master
git checkout -b console
 git push -u origin console
ls
cd php-helloworld/
cat index.php 
source /usr/local/etc/ocp4.config
 echo ${RHT_OCP4_WILDCARD_DOMAIN}
cd
cd ~/DO180-apps/php-helloworld
nano index.php 
git add index.php
 git commit -m 'upda
 git commit -m 'updated app'
 git push origin console
cat ../todoapp/
cat ../../token 
 git push origin console
 lab openshift-webconsole finish
 lab openshift-review start
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER}  -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
 oc new-project ${RHT_OCP4_DEV_USER}-ocp
 oc new-app php:7.3~https://github.com/RedHatTraining/DO180-apps --context-dir temps --name temps
 oc logs -f bc/temps
oc get pods -w
oc expose svc/temps
oc get pods -w
oc get route/temps
lab openshift-review grade
 lab openshift-r
 lab openshift-review finish
cd
lab multicontainer-design start
podman login registry.redhat.io
cat DO180/labs/multicontainer-design/deploy/nodejs/Containerfile
ip -br addr list eth0
cat DO180/labs/multicontainer-design/deploy/nodejs/nodejs-source/models/db.js
cat DO180/labs/multicontainer-design/deploy/nodejs/build.sh
cd ~/DO180/labs/multicontainer-design/deploy/nodejs
./build.sh
 podman images --format "table {{.ID}} {{.Repository}} {{.Tag}}"
cd
cd DO180/labs/multicontainer-design/deploy/nodejs/networked
nano run.sh 
cat DO180/solutions/multicontainer-design/deploy/nodejs/networked/run.sh
cd
cat DO180/solutions/multicontainer-design/deploy/nodejs/networked/run.sh
cd DO180/labs/multicontainer-design/deploy/nodejs/networked
./run.sh
podman ps 
mysql -uuser1 -h 172.25.250.9 -pmypa55 -P30306 items < ~/DO180/labs/multicontainer-design/deploy/nodejs/networked/db.sql
podman exec -it todoapi env
curl -w "\n" http://127.0.0.1:30080/todo/api/items/1
lab multicontainer-design finish
