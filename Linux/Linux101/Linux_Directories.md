## Directories Found on Linux Systems

### / 
The root directory, where everything begins.

### /bin
Contains binaries (programs) that must be present for the system to boot and run.

### /boot
Contains the Linux kernel, initial RAM disk image (for drivers needed at boot time), and the boot loader. Interesting files include /boot/grub/grub.conf, or menu.lst, which is used to configure the boot loader, and /boot/vmlinuz (or something similar), the Linux kernel.

### /dev
This is a special directory that contains device nodes. “Everything is a file” also applies to devices. Here is where the kernel maintains a list of all the devices it understands.

### /etc 
The /etc directory contains all the system-wide configuration files. It also contains a collection of shell scripts that start each of the system services at boot time. Everything in this directory should be readable text. While everything in /etc is interesting, here are some all-time favorites: /etc/crontab, a file that defines when automated jobs will run; /etc/fstab, a table of storage devices and their associated mount points; and /etc/passwd, a list of the user accounts.

### /home
In normal configurations, each user is given a directory in /home. Ordinary users can write files only in their home directories. This limitation protects the system from errant user activity.

### /lib 
Contains shared library files used by the core system programs. These are similar to dynamic link libraries (DLLs) in Windows.


