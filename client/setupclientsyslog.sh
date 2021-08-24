
#!/bin/bash
sudo apt update
sudo apt install -y wget rsyslog
wget 
sudo cp 50-default.conf /etc/rsyslog.d/
sudo systemctl start rsyslog
sudo systemctl enable rsyslog
sudo ufw allow 514/tcp
sudo ufw allow 514/udp
sudo systemctl restart rsyslog
sudo ss -tulnp | grep "rsyslog"

