usermod -a -G docker jenkins

chown -R jenkins:jenkins /var/jenkins_home 
chown jenkins:docker /var/run/docker.sock

su -c /usr/local/bin/jenkins.sh jenkins