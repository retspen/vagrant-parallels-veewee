### Building a new vagrant box for Parallels Desktop

Download and Install [ParallelsVirtualizationSDK-9.0](http://download.parallels.com/desktop/v9/pde.hf1/ParallelsVirtualizationSDK-9.0.24172.951362.dmg)


```
sudo gem install veewee
veewee parallels build precise64  --workdir=.
veewee parallels export precise64 --workdir=.
```
