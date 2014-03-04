## Building a new vagrant box for Parallels Desktop

Download and Install [ParallelsVirtualizationSDK-9.0](http://download.parallels.com/desktop/v9/pde.hf1/ParallelsVirtualizationSDK-9.0.24172.951362.dmg)


```
sudo gem install veewee
veewee parallels build precise64
veewee parallels export precise64
```

### Tips:

If you use PD9 change line 178 in file <code>/Library/Ruby/Gems/2.0.0/gems/veewee-0.3.12/lib/veewee/provider/parallels/box/export.rb</code>

from

```
optimize_command = "#{@prldisktool} compact --buildmap --hdd #{path_to_hdd}"
```

to

```
optimize_command = "#{@prldisktool} compact --hdd #{path_to_hdd}"
```
