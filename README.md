### Building a new vagrant box for Parallels Desktop

```
vagrant plugin install vagrant-parallels
sudo gem install veewee
bundle exec veewee parallels define 'ubuntu-12.04-lts' 'https://github.com/mkoryak/vagrant-parallels-ubuntu-12.04-lts.git/definitions/parallels-ubuntu-12.04-server-amd64'
bundle exec veewee parallels build 'ubuntu-12.04-lts'  --workdir=.
bundle exec veewee parallels export 'ubuntu-12.04-lts' --workdir=.
```
