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
- Command can show HA usage in section *Video*
```bash
sudo intel_gpu_top
```
- Command can show current driver, vaapi status and supported codecs
```bash 
vainfo
```
- Hardware acceleration works:
  - [x] Chromium - ~Better~ Very often video freezes ):
  - [x] Firefox - Better stability. I have only one freeze.
  - [x] Brave - ~not work ):~ Hardware acceleration work with flag `--enable-features=VaapiVideoDecodeLinuxGL`.
        Freezes like chromium very often.
  - [ ] Chrome - didn't try
### Links
- [Arch wiki - Intel graphics](https://wiki.archlinux.org/title/intel_graphics)
- [Gentoo wiki - Intel graphics](https://wiki.gentoo.org/wiki/Intel)
- [Tuning Intel Skylake gist](https://gist.github.com/Brainiarc7/aa43570f512906e882ad6cdd835efe57)
- [Fedora discussion about hardware acceleration](https://discussion.fedoraproject.org/t/intel-graphics-best-practices-and-settings-for-hardware-acceleration/69944)
- [Fedora wiki - Hardware acceleration on Firefox](https://fedoraproject.org/wiki/Firefox_Hardware_acceleration)
- [Arch forum - Discussion about hardware acceleration on Chrome/Chromium](https://bbs.archlinux.org/viewtopic.php?id=244031&p=26)
- [Man page intel](https://man.archlinux.org/man/intel.4)
- [Man page modesetting](https://man.archlinux.org/man/modesetting.4)
- [Intel media driver repo](https://github.com/intel/media-driver)
### /etc/modprobe.d/i915.conf 
```bash
  options i915 enable_guc=2
```
Optional `options i915 enable_fbc=1`
### /etc/X11/xorg.conf.d/20-modesetting.conf 
```bash
Section "Device"
  Identifier  "Intel Graphics"
  Driver      "modesetting"
  Option      "AccelMethod"    "glamor"
  Option      "DRI"            "3"
EndSection
```
Optional can add `Option      "TearFree"       "true"` if have tear effect
### /etc/X11/xorg.conf.d/modesetting.conf 
```bash
Section "Device"
  Identifier  "modesetting"
  Driver      "modesetting"
EndSection
```
