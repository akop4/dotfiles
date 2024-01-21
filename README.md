# TODO
- [ ] Change makefile to ansible
- [ ] Audio hardware config
# Dotfiles
- Check you haven't existing files in destination folders, if they exist then make backup
- make all
- make delete
# Hardware settings
## Intel driver
- Intel i3-6006u
- Gen 9 Intel graphics
- HA in my case only work with modesetting driver
- command can show HA usage in section *Video*

```bash sudo intel_gpu_top```

- Hardware acceleration works:
  - [x] Chromium - better
  - [x] Firefox
  - [ ] Brave - not work ):
  - [ ] Chrome - didn't try
### Links
- [Arch wiki - Intel graphics](https://wiki.archlinux.org/title/intel_graphics)
- [Gentoo wiki - Intel graphics](https://wiki.gentoo.org/wiki/Intel)
- [Tuning Intel Skylake gist](https://gist.github.com/Brainiarc7/aa43570f512906e882ad6cdd835efe57)
- [Fedora discussion about hardware acceleration](https://discussion.fedoraproject.org/t/intel-graphics-best-practices-and-settings-for-hardware-acceleration/69944)
- [Fedora wiki - Hardware acceleration on Firefox](https://fedoraproject.org/wiki/Firefox_Hardware_acceleration)
- [Arch forum - Discussion about hardware acceleration on Chrome/Chromium](https://bbs.archlinux.org/viewtopic.php?id=244031&p=26)
### /etc/modprobe.d/i915.conf 
```bash
  options i915 enable_guc=3
  options i915 enable_fbc=1
```
### /etc/X11/xorg.conf.d/20-modesetting.conf 
```bash
Section "Device"
  Identifier  "Intel Graphics"
  Driver      "modesetting"
  Option      "AccelMethod"    "glamor"
  Option      "DRI"            "3"
  Option      "TearFree"       "true"
EndSection
```
### /etc/X11/xorg.conf.d/modesetting.conf 
```bash
Section "Device"
  Identifier  "modesetting"
  Driver      "modesetting"
EndSection
```
