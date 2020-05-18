https://www.x.org/wiki/Development/Documentation/PointerAcceleration/
https://github.com/p2rkw/xf86-input-mtrack
https://askubuntu.com/questions/766725/annoying-flickering-in-16-04-lts-chrome
https://wiki.archlinux.org/index.php/intel_graphics
https://wiki.archlinux.org/index.php/NVIDIA_Optimus
https://wiki.archlinux.org/index.php/NVIDIA#DRM_kernel_mode_setting
https://developers.redhat.com/blog/2018/10/22/introduction-to-linux-interfaces-for-virtual-networking/
https://davidlovezoe.club/wordpress/


https://www.nvidia.com/en-us/drivers/unix/


create file with the following content /etc/modprobe.d/blacklist-nvidia-nouveau.conf
```
blacklist nouveau
options nouveau modeset=0
```

for mtrack to work properly, add user to input group and restart
```
usermod -a -G input marsqing
```

if pacmd list-cards show no sound card, edit /etc/default/grub and add snd_hda_intel.dmic_detect=0
```
GRUB_CMDLINE_LINUX_DEFAULT="... snd_hda_intel.dmic_detect=0"
```
then
grub-mkconfig -o /boot/grub/grub.cfg
reboot
