
## Intro

This tutorial is dedicated for deployment ox PXE boot infrastructure.

## Installation procedure

 - Step 0 – Installing Ubuntu 20.04 Desktop

We will need to have a “PXE Server” deployed on the network.  In our scenario, an Ubuntu 20.04 Desktop system will be used. This machine will host the necessary services needed to deploy operating system through network.  Obviously, you could have used Ubuntu Server Edition as the steps and processes are quite similar.   Be sure that Ubuntu 20.04 Desktop has the latest updates installed.

 - Step 1 – Download necessary packages

In this post, we assume that the Ubuntu Desktop 20.04 will be hosting all the necessary services needed to implement a proper PXE Infrastructure. To setup a PXE infra, we need to 
install the following packages 

```sh
dnsmasq (providing DHCP,DNS and TFTP services),
apache web for storage purposes and NFS packages if you are planning to deploy Ubuntu Desktop through your PXE infrastructure.
```

 - Step 1.2 – Install NFS packages

NFS packages will provide file services capabilities. To install the nfs packages, execute the following commands 

```sh
sudo apt-get install nfs-kernel-server 
```

 - Step 1.3 – Install dnsmasq packages

To install the dnsmasq package, you will issue the following command 

```sh
sudo apt-get install dnsmasq
```

During the installation, you will see some errors and warnings. At this stage, this is an expected behavior.  Additional configuration will be needed at later stage

 - Step 1.4 –Download pxelinux Packages

We will first download the PXELinux package from the web site creator
```sh
mkdir ~/Downloads/syslinux
cd ~/Downloads/syslinux
wget https://mirrors.edge.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip
unzip syslinux-6.03.zip
```

 - Step 1.5 –Download “UEFI” Packages

The commands below basically will download the necessary signed bootloader files and grub files needed by PXE server and extract the contents on their dedicated folders (shim and grub). These files are needed to pxeboot uefi clients…..
```sh
apt-get download shim.signed
dpkg -x <%name of deb package%> shim

apt-get download grub-efi-amd64-signed
dpkg -x <%name of deb package%> grub
```

 - Step 2 – Create the TFTP Folder Structure

We will create a folder called tftp at root of the filesystem (/tftp).   Within this folder, the following structure will be create

```
tftp
 |-bios
 |-boot
 |-grub 
```

To create this structure, you will need to execute the following commands in your Terminal Console
```sh
sudo mkdir /tftp
sudo mkdir /tftp/bios
sudo mkdir /tftp/boot
sudo mkdir /tftp/grub
```

 - Step 3 – Create the web Folder Structure

Because you are using the Apache Web server, we will be copying all sources files under /var/www/html directory.  We will copy the iso files contents of Ubuntu 20.04 Desktop and Ubuntu Server under this location.

Our structure will look like the following representation.   Obviously, you can create your own structure

```
var  
 |-www
   |-html
     |-server
         |-ubuntu-20.04
         |-ubuntu-18.04
         |- ...
     |-desktop
         |-ubuntu-20.04
         |-ubuntu-18.04
         |- ...  
```

To create the following folder structure, you can use the following commands in a Terminal Console

```sh
sudo mkdir /var/www/html/desktop/
sudo mkdir /var/www/html/desktop/ubuntu-20.04
sudo mkdir /var/www/html/desktop/ubuntu-18.04
sudo mkdir /var/www/html/server
```

 - Step 4 – Populate the web folder structure

So, mount your iso file into your Ubuntu PXE machine.  To mount it, issue the following command 

```sh
sudo mount /dev/sr0 /media
```

Copy the files from the iso image into the correct directory.  You can use the following syntax to perform the operation 

```sh
sudo cp -rf  <%Your Path To Install Files%>/*  /var/www/html/desktop/focal
example : sudo cp -rf /media/*  /var/www/html/desktop/u2004
```

The command below is copying all the contents of the source cdrom except a hidden folder which is needed to have the pxe process working as expected.  So, you have to run an additional command in order to ensure that all the files you need have been copied accordingly.  From a Terminal Console, issue the following command 

```sh
sudo cp -rf  <%Your Path To Install Files%>/.disk  /var/www/html/desktop/focal 
example : sudo cp -rf /media/cdrom_Name/.disk /var/www/html/desktop/u2004
```

When the copy is finished, unmount the iso/DVD image from your machine by issuing the following command 

```sh
sudo umount /media
```

You can check that your files have been copied accordingly by browsing to /var/www/html/desktop/xxxx.

 - Step 5 – Configuring your NFS Server Settings 

Since our folder structure is ready, we can start configuring the different services that are used by the PXE server.   To ensure that our directory structure is accessible through the network and through the nfs protocol, we will need to edit the following file by issuing the following command

```sh
sudo nano /etc/exports
```

Insert at the bottom of the file, the path where you have stored your installation files, which subnet can access it and which kind of right you want to grant.  In our  scenario, we want to grant access to the following directory /var/www/html/desktop  through the network subnet 192.168.1.0/24 and we are granting read only access (ro).  So, at the end of the file, we would add the following line 

```sh
/var/www/html/desktop             192.168.1.0/24(ro)
```

When this has been done, it’s time to restart the nfs service. To do that, you simply execute the following command

```sh
sudo systemctl restart nfs-kernel-server
```

 - Step  6 – Configuring the dnsmasq service

Almost there !  Now, we need to configure the dnsmasq service which will provide the glue between the different services.  dnsmasq configuration file will be used to provide the necessary information to the pxe client when it boots.  This file will dictate where to look for pxe bootloader based on the client architecture (uefi or bios).  So, let’s edit the /etc/dnsmasq.conf file and at the bottom add the following information

To edit the configuration file, issue the following command

```sh
sudo nano /etc/dnsmasq.conf 
```

Copy and update the following information at the bottom of the file 

Note : You will need to modify it accordingly to reflect your own infrastructure

```ini
#Interface information 
#--use ip addr to see the name of the interface on your system
interface=eth0,lo
bind-interfaces
domain=c-nergy.local

#--------------------------
#DHCP Settings
#--------------------------
#-- Set dhcp scope
dhcp-range=192.168.1.160,192.168.1.200,255.255.255.0,2h

#-- Set gateway option
dhcp-option=3,192.168.1.1

#-- Set DNS server option
dhcp-option=6,192.168.1.1

#-- dns Forwarder info
server=8.8.8.8

#----------------------#
# Specify TFTP Options #
#----------------------#

#--location of the pxeboot file
dhcp-boot=/bios/pxelinux.0,pxeserver,192.168.1.150

#--enable tftp service
enable-tftp

#-- Root folder for tftp
tftp-root=/tftp

#--Detect architecture and send the correct bootloader file
dhcp-match=set:efi-x86_64,option:client-arch,7 
dhcp-boot=tag:efi-x86_64,grub/bootx64.efi
```
 

To have the change applied to your system, you will need to restart the dnsmasq service.  To perform such task, you will execute the following command

```sh
sudo systemctl restart dnsmasq
```

Then, you should check that the dnsmasq is started correctly and that no errors are reported by issuing the command 

```sh
sudo systemctl status dnsmasq
```

 - Step 7  – Populate TFTP Folder

Now, we need to populate the TFTP folder structure. 

 - Step 7.1 – Populate bios folder

We have created the folder /tftp/bios in a previous step.  This folder will hold the needed pxelinux files that we will be using to boot from network

```sh
sudo cp <%your download location%>/bios/com32/elflink/ldlinux/ldlinux.c32  /tftp/bios
sudo cp <%your download location%>/bios/com32/libutil/libutil.c32  /tftp/bios  
sudo cp <%your download location%>/bios/com32/menu/menu.c32  /tftp/bios
sudo cp <%your download location%>/bios/com32/menu/vesamenu.c32  /tftp/bios 
sudo cp <%your download location%>/bios/core/pxelinux.0  /tftp/bios
sudo cp <%your download location%>/bios/core/lpxelinux.0  /tftp/bios
```

 - Step 7.2 – Populate grub folder 

We will do the same for the grub folder. The grub folder contains files that are needed for UEFI computers.  We will need to obtain the correct version of grub files (the ones that are signed).   

When this is done, we can simply copy the needed file into the tftp boot folder.  So, execute the following commands. Change the path accordingly based on your settings… 

```sh
sudo cp ~/Downloads/grub/usr/lib/grub/x86_64-efi-signed/grubnetx64.efi.signed  /tftp/grubx64.efi
sudo cp ~/Downloads/shim/usr/lib/shim/shimx64.efi.signed  /tftp/grub/bootx64.efi
```

Finally, we will copy two additional files from the source iso image.  They will server as base for the next step. So, execute the following commands 

```sh
sudo cp /var/www/html/desktop/u2004/boot/grub/grub.cfg  /tftp/grub/
sudo cp /var/www/html/desktop/u2004/boot/grub/font.pf2 /tftp/grub/
```

 - Step 7.3 – Populate boot folder 

In this step, we need to place the correct bootloader in order for the installation process to start accordingly.  We will copy the necessary files from the /var/www/html location.   Issue the following commands to copy the necessary files to the correct location

Note : Ensure that the folder /tftp/boot/casper has been created and exists….

```sh
sudo cp /var/www/html/desktop/u2004/casper/vmlinuz      /tftp/boot/casper
sudo cp /var/www/html/desktop/u2004/casper/initrd       /tftp/boot/casper
```

 - Step 7.4 – Create symbolic link to  boot folder

You will also need to create a symbolic link to the /tftp/boot folder.  You will need to issue the following command 

```sh
sudo ln -s /tftp/boot  /tftp/bios/boot
```

 - Step  8 – Creating/Updating pxelinux.cfg & grub.cfg file

These are the most important files of the configuration.  These files tells the target machine where to connect and where the file source files needed to perform the network installation.  So, let’s create them…

 - Step 8.1 – create you pxelinux configuration file

We will also need to create the folder called pxelinux.cfg under the /tftp/bios folder.

```sh
sudo mkdir /tftp/bios/pxelinux.cfg
```

Inside this folder, we will create an empty file called default.  This file control the pxelinux behavior. We will populate it with the following code

```ini
DEFAULT menu.c32
MENU TITLE ULTIMATE PXE SERVER - By Griffon - Ver 2.0
PROMPT 0 
TIMEOUT 0

MENU COLOR TABMSG  37;40  #ffffffff #00000000
MENU COLOR TITLE   37;40  #ffffffff #00000000 
MENU COLOR SEL      7     #ffffffff #00000000
MENU COLOR UNSEL    37;40 #ffffffff #00000000
MENU COLOR BORDER   37;40 #ffffffff #00000000

LABEL Ubuntu Desktop 20.04
    kernel /boot/casper/vmlinuz
    append nfsroot=192.168.1.150:/var/www/html/desktop/u2004 netboot=nfs ip=dhcp boot=casper initrd=/boot/casper/initrd systemd.mask=tmp.mount --
```

Save it 

You are ready to move to the next section

 - Step 8.2 – create you grub configuration file

We are almost done !  Now, we need to create also a grub boot menu and get the proper option available and working.  The grub boot loader reads information from the grub.cfg file.  If you have followed this step by step guide, the content of the grub.cfg file should look like this 
```sh
if loadfont /grub/font.pf2 ; then
set gfxmode=auto
insmod efi_gop
insmod efi_uga
insmod gfxterm
terminal_output gfxterm
fi

set menu_color_normal=white/black
set menu_color_highlight=black/light-gray
set timeout=5

menuentry "Ubuntu Desktop 20.04" {
set gfxpayload=keep
linux /boot/casper/vmlinuz ip=dhcp nfsroot=192.168.1.150:/var/www/html/desktop/u2004/ netboot=nfs ip=dhcp boot=casper systemd.mask=tmp.mount --
initrd /boot/casper/initrd
}
```

Save it 
