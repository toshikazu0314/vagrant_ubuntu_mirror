# vagrant_ubuntu_mirror
## Prerequisite
* Vagrant box file of [ubuntu/trusty64](https://atlas.hashicorp.com/ubuntu/boxes/trusty64)

## How to use
1. prepare a directory to store the repository  
_$ mkdir ../ubuntu_mirror_
2. create VM  
_$ vagrant up_
3. login a VM  
_$ vagrant ssh_
4. mirror files  
_$ ./mirrorbuild.sh_

## Optimization
The script file "mirrorbuild.sh" contains a server name to download archives.
You may want to change it so that you have better network throughput.
Find from [Official Archive Mirrors for Ubuntu](https://launchpad.net/ubuntu/+archivemirrors).
