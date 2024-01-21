# dotfiles
my personal dot files

# Hardware settings
## Intel driver

/etc/modprobe.d/i915.conf 

'''
  options i915 enable_guc=3
  options i915 enable_fbc=1
'''

/etc/X11/xorg.conf.d/20-modesetting.conf 

'''
   Section "Device"
     Identifier  "Intel Graphics"
     Driver      "modesetting"
     Option      "AccelMethod"    "glamor"
     Option      "DRI"            "3"
     Option      "TearFree"       "true"
   EndSection
'''

/etc/X11/xorg.conf.d/modesetting.conf 

'''
   Section "Device"
     Identifier  "modesetting"
     Driver      "modesetting"
   EndSection
'''
