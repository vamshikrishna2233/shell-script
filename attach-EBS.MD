### ATTACH EBS volume to running EC2 instance

**NOTE:**
EBS volume should be in same AZ where your instance is running .

### steps ###

By default you cant see the volume in linux server , we need to do some configuration

you can check the volume available or not using below command 

...
lsblk
...

create filesystem from volume

...
sudo mkfs -t xfs /dev/xvdf
...
