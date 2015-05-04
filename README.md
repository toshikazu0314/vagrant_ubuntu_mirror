# vagrant_ubuntu_mirror
## Prerequisite
* Vagrant box file of [ubuntu/trusty64](https://atlas.hashicorp.com/ubuntu/boxes/trusty64)
## How to use
1. prepare a directory to store the repository
$ mkdir ../ubuntu_mirror
2. create VM
$ vagrant up
3. login a VM
$ vagrant ssh
4. mirror files
$ ./mirrorbuild.sh
## Optimization
The script file "mirrorbuild.sh" contains server name to download archives.
You may want to change it so that you have better network throughput.
Find from [Official Archive Mirrors for Ubuntu](https://launchpad.net/ubuntu/+archivemirrors).
