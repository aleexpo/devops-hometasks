# Hi there! Here i will tell you about my portfolio tasks.

In this repository has folders task-01 - task-11 and final. Every folder contains code and files needed for it to work.

If you want a test how this code work please download full needed folder on your PC!

----

**Task-01 (Vagrant+apache2+php+MySQL config)**

I create Vagrantcloud image "aleexpo/aleexpo-debian10-arm64" based on Ubuntu server and include apache2(2 sites), php, MySQL server in it.

If you start VM from this image you get static html-site on http://localhost:8080 and php-site on http://localhost:8081

----

**Task-02 (LXC-Containers+sites from task-01)**

Created Vagrantfile based on Debian Buster
- Inside the VM set-up LXC-Containers based on CentOS
- With installed static-site from task-01
- With installed dynamic php-site from task-01

If you start VM from this Vagrantfile you get static html-site on http://localhost:8080 and php-site on http://localhost:8081 working in LXC-containers r1 & r2

If you dont have arm64 VM you can watch screen recorded video on my YouTube - https://www.youtube.com/watch?v=lPF2djfZZ90

----

**Task-03 (Ansible + LXC)**

Part 1.

In folder "ansible" you find Vagrantfile wich create VM and configurate with Ansible. Ansible configurate LXC-containers. Type in your browser http://localhost:8080(8081) and you see sites from previous tasks.

Screen recorded video on YouTube - https://www.youtube.com/watch?v=9dCGReD6M5s

Part 2.

In folder "ansible-lxc" you find Vagrantfile wich create VM and configurate with Ansible. Ansible configurate LXC-containers based on CentOs. Type in your browser http://localhost:8080(8081) and you see sites from previous tasks.

Screen recorded video on YouTube - https://www.youtube.com/watch?v=TazfIUQUlRI

----

**Task-04 (Puppet+minecraft server)**

Vagrantfile creates 4 VMs - slave1(puppet-agent), slave2(puppet-agent), mineserver.puppet(minecraft-server), master.puppet(puppet-server+r10k(uses my repo https://github.com/aleexpo/puppet-server-repo)). 

Ansible configurate puppet-server, puppet-agents(slave1,slave2). After this Puppet configurate slave1 and slave2(for showing static and dynamic sites from previous tasks), install and configurate Minecraft server on a mineserver.puppet(self-maded puppet module).
Master.puppet configured as reverse-proxy for slave1 and slave2 with nginx-module.

Test-commands:

sudo r10k deploy environment -p

sudo /opt/puppetlabs/bin/puppet agent -t

sudo systemctl status minecraft.service

----

**I will end of FAQ in august 30.
