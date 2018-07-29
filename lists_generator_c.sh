#######################  list_generator_c.sh #############################
#!/bin/bash
#
#	Revision 0		13042018		nobodino
#		-initial release for bootstrap only
#		-added jansson to list1_e for curl
#		-removed flex-2.5.39 to build doxygen-1.8.14 (found a patch for flex-2.6.4)
#		-moved seamonkey, thunderbird and firefox at the end of build4_s.list
#		-changed rxvt to rxvt-unicode
#		-added patchelf before gcc
#	Revision 1		20042018		nobodino
#		-modified for 'third mass rebuild'
#	Revision 2		25042018		nobodino
#		-removed libmsn
#		-added alsa-libs to list4 (modification on pulseaudio/alsa)
#		-added parallel to list3
#		-modified jdk build: switch to extra/java
#	Revision 3		07072018		nobodino
#		-removed slackware_exp
#		-updated list1, list2, list3 and list4
#	Revision 4		19072018		nobodino
#		-updated list4 for QScintilla two pass package
#		-updated list4 for gnutls and adwaita-icon-theme
#	Revision 5		28072018		nobodino
#		-updated list1 for libart_lgpl
#		-updated list1 to remove "tools/bin" problem (Worsel suggestion)
#
###########################################################################
# set -x

lists_generator_c () {
#******************************************
# generator of lists of packages
#******************************************
	generate_slackware_link_build_list
	generate_slackware_build_list1_c
	generate_slackware_build_list2_c
	generate_slackware_build_list3_c
	generate_slackware_build_list4_c
}

generate_slackware_link_build_list () {
cat > $SFS/sources/link.list << "EOF"
a link_tools_slackware
EOF
}

generate_slackware_build_list1_c () {
#******************************************
cat > $SFS/sources/build1_s.list << "EOF"
a findutils
a pkgtools
a aaa_base
a etc
d kernel-headers
d python
d python3
d bison
l glibc
a adjust
# a test-glibc
l zlib
d bison
d help2man
a lzip
d flex
d binutils
d libtool
l gmp
l mpfr
l libmpc
# l libart_lgpl
a infozip
l expat
d python
d python3
l gc
d patchelf
d pre-gcc
d gcc
d post-gcc
a bzip2
d pkg-config
l ncurses
a attr
a acl
l libcap
l libcap
a sed
a shadow
a grep
l readline
l gdbm
d gperf
d autoconf
d automake
a xz
a kmod
a gettext
a gettext-tools
l elfutils
l libffi
a procps-ng
ap groff
a util-linux
a e2fsprogs
a coreutils
a glibc-zoneinfo
l readline
l readline
ap diffutils
a gawk
a less
a gzip
n libmnl
l libnl
l libnl3
l libpcap
n libnfnetlink
n libnetfilter_conntrack
n libnftnl
n iptables
n iproute2
a hostname
a kbd
l libunistring
l gc
l gmp
d guile
d make
a patch
a sysklogd
a utempter
a sysvinit
a sysvinit-scripts
l popt
a sysvinit-functions
a bin
a devs
n network-scripts
l pcre
l glib2
l gamin
l glib2
l gobject-introspection
a eudev
ap man-db
a bash
a tar
ap texinfo
ap man-pages
l jemalloc
l libaio
n openssl
n openssl10
l libssh2
l jansson
n curl
l libarchive
d cmake
ap mariadb
d perl
d intltool
a ed
ap bc
a file
d m4
a which
l readline
n dhcpcd
a kernel-all
d help2man
d flex
d bison
d autoconf
d libtool
a end1
EOF
}

generate_slackware_build_list2_c () {
#******************************************
cat > $SFS/sources/build2_s.list << "EOF"
d re2c
d ninja
d meson
a haveged
a gpm
a gpm
a sysfsutils
l alsa-lib
n cyrus-sasl
n openldap-client
l libidn
l libidn2
a hwdata
a pciutils
d pkg-config
l glib2
l gamin
l glib2
a libgudev
d pkg-config
n wget
l libcap-ng
extra bash-completion
n libgpg-error
n libgcrypt
l libxml2
tcl tcl
l libxslt
a kmod
l fuse
l libpng
l gdbm
l lzo
l openjpeg
d nasm
l libjpeg-turbo
l mm
l slang1
l slang
l libtiff
l libusb
l libusb-compat
l libsigsegv
l svgalib
l db42
l db44
a lvm2
l lcms2
n nettle
l libtasn1
a dcron
n ca-certificates
n p11-kit
l libunistring
a dbus
a rpm2tgz
d slacktrack
ap itstool
l icu4c
a xfsprogs
ap dmapi
l freetype
l harfbuzz
l freetype
l harfbuzz
l gd
t texlive
ap sqlite
l mozilla-nss
l db48
ap rpm
a cpio
a libgudev
a usbutils
a dialog
d help2man
ap linuxdoc-tools
ap nano
n rsync
ap mc
n tcp_wrappers
n openssh
n ncftp
n bind
n dhcpcd 
n dhcp
l gmp
n gnutls
ap cups
n iputils
l ncurses
a pre-elflibs
a aaa_elflibs
a post-elflibs
a aaa_terminfo
a kmod
a eudev
l libusb
a libgudev
f linux-faqs
f linux-howtos
d python
d python3
l libical
a dbus
n bluez
n net-tools
extra java
x x11-skel
x libevdev
x mtdev
x xdg-user-dirs
x x11-doc
x x11-proto
x x11-util
n lynx
x xdg-utils
x fontconfig
ap ghostscript
ap ghostscript-fonts-std
a dialog
l dbus-glib
l dbus-python
ap sudo
l sg3_utils
a utempter
d swig
l libedit
d llvm
d llvm
l icu4c
x x11-lib
l gd
x x11-xcb
l startup-notification
x libdrm
x libva
x libva-utils
x intel-vaapi-driver
x libvdpau
l libclc
d python-setuptools
l Mako
x mesa
x glew
x glu
x freeglut
x mesa
x libXaw3dXft
x libepoxy
l cairo
a eudev
a libgudev
x libwacom
l libunwind
x x11-app
x x11-font
x x11-server
x x11-driver
x x11-app-post
x dejavu-fonts-ttf
x liberation-fonts-ttf
x motif
x xterm
x libva
x urw-core35-fonts-otf
x ttf-tlwg
d git
x vulkan-sdk
xap rxvt-unicode
xap blackbox
a end2
EOF
}

generate_slackware_build_list3_c () {
#******************************************
cat > $SFS/sources/build3_s.list << "EOF"
ap linuxdoc-tools
l libpcap
a efivar
a efibootmgr
l gnu-efi
a elilo
a dbus
d ruby
l qt
d cmake
l libunistring
l gc
l gmp
d guile
d mercurial
d python-setuptools
l imagemagick
l xapian-core
l poppler
l poppler-data
l shared-mime-info
l gdk-pixbuf2
l atk
l at-spi2-core
l at-spi2-atk
l fribidi
l pango
l gtk+2
l libglade
tcl expect
d clisp
t texlive
x fontconfig
d doxygen
d strace
d rcs
d ccache
d cvs
d yasm
l apr
l apr-util
l jansson
n nghttp2
n httpd
n curl
l neon
l utf8proc
d subversion
d cmake
tcl tk
tcl tclx
tcl expect
tcl tix
t xfig
t fig2dev
l libsigsegv
l libsigc++
d cscope
d distcc
d dev86
d p2c
d oprofile
d binutils
d python-pip
d re2c
d ninja
d meson
d patchelf
d parallel
l pyparsing
l python-appdirs
l python-certifi
l python-chardet
l python-docutils
l python-idna
l python-packaging
l python-requests
l python-urllib3
l libsndfile
l orc
l speexdsp
l libasyncns
l pulseaudio
l alsa-lib
l boost
l judy
l netpbm
l libwnck
l gstreamer0
l js185
l polkit
a upower
l gst-plugins-base0
l gtk+3
x libinput
x x11-app-post
ap cups
l pcre2
l vte
l libnotify
l keybinder
l libproxy
l gsettings-desktop-schemas
l glib-networking
l hicolor-icon-theme
l libcroco
d rust
l librsvg
l gdk-pixbuf2
l gnome-themes-standard
l libsoup
l libevent
l libvpx
l GConf
l libwnck
l adwaita-icon-theme
xfce xfce
xfce xfce
a end3
EOF
}

generate_slackware_build_list4_c () {
#******************************************
cat > $SFS/sources/build4_s.list << "EOF"
l python-six
d opencl-headers
l ocl-icd
l giflib
l parted
l libatasmart
l libnih
l lzo
n gnupg
n libassuan
n libksba
n npth
n gnupg2
d python
a cryptsetup
a inotify-tools
a logrotate
ap enscript
ap a2ps
ap qpdf
ap cups-filters
ap seejpeg
ap rzip
ap sc-im
ap screen
a xfsprogs
ap xfsdump
ap xorriso
a ntfs-3g
a sharutils
a mlocate
a time
a tree
n ethtool
n iproute2
n lftp
e emacs
a acpid
a btrfs-progs
a cpufrequtils
a dcron
a dosfstools
a elvis
a floppy
a genpower
a getty-ps
a gptfdisk
a grub
a hdparm
a isapnptools
a jfsutils
a lha
a libcgroup
d dev86
a lilo
a mcelog
a mdadm
a minicom
a mkinitrd
a mt-st
a mtx
a ncompress
a os-prober
a pcmciautils
d flex
a quota
a reiserfsprogs
l sg3_utils
a sdparm
a smartmontools
a splitvt
a syslinux
a tcsh
a udisks
a udisks2
a unarj
a upower
a usb_modeswitch
a zoo
ap acct
l alsa-lib
ap alsa-utils
ap amp
ap dash
n libmilter
n postfix
ap at
ap bpe
ap cdparanoia
ap cdrdao
ap cdrtools
ap cgmanager
ap dc3dd
a lrzip
ap ddrescue
ap diffstat
ap dmidecode
ap dvd+rw-tools
ap flac
l libgphoto2
ap gphoto2
l babl
l json-c
l json-glib
x libmypaint
l gegl
l libssh
l exiv2
l gexiv2
x mypaint-brushes
l pygobject
l pycairo
l pygtk
xap gimp
l glib
l gtk+
ap gutenprint
ap lm_sensors
n net-snmp
xap sane
xap xsane
l python-sane
ap hplip
ap ispell
ap jed
ap joe
ap jove
ap ksh93
ap libx86
ap lsof
ap lsscsi
ap lxc
l libmad
l libid3tag
ap madplay
ap most
l sdl
ap mpg123
l glib
l gtk+
xap xmms
ap normalize
ap pm-utils
l libnl
ap powertop
ap radeontool
ap rzip
ap screen
ap soma
ap sox
ap sysstat
ap terminus-font
ap tmux
a floppy
a lzlib
a plzip
a lbzip2
l libplist
l libusbmuxd
l libimobiledevice
ap usbmuxd
ap vbetool
l libogg
l id3lib
l opus
l opusfile
ap opus-tools
l speex
l libvorbis
l libao
ap vorbis-tools
ap zsh
ap htop
ap pamixer
ap squashfs-tools
l wavpack
xap easytag
xap audacious
xap ddd
l python-notify2
l libical
n bluez
l pygobject3
d Cython
xap blueman
l libglade
xap electricsheep
xap fvwm
xap fluxbox
xap geeqie
xap gkrellm
xap gimp
xap gftp
xap gkrellm
xap gnuchess
xap gnuplot
l desktop-file-utils
xap gucharmap
l imagemagick
l iso-codes
l libnl3
n ppp
l gmime
xap pan
l hunspell
l enchant
l gtkspell
l libsigc++
l glibmm
l cairomm
l pangomm
l atkmm
l gtkmm3
l libcanberra
l gstreamer
l dconf
l dconf-editor
l gtkmm2
l gsl
l libcap-ng
l librevenge
l libwpd
l libvisio
l libwpg
l sbc
xap pavucontrol
xap pidgin
xap rdesktop
xap windowmaker
xap x11-ssh-askpass
xap x3270
xap xaos
xap xfractint
xap gparted
l libtheora
l libcdio
l libcdio-paranoia
l libdvdread
l libdvdnav
l libcaca
l fribidi
l talloc
l tdb
l tevent
n samba
l v4l-utils
l libpng
xap xine-lib
xap xlockmore
xap xpaint
xap xpdf
l jasper
xap xgames
n libmbim
n libqmi
n ModemManager
n alpine
n libtirpc
n autofs
n biff+comsat
n bluez-firmware
a kernel-firmware
n iputils
n bootp
n bridge-utils
n bsd-finger
n cifs-utils
n libmnl
n libnfnetlink
n libnetfilter_acct
n libnetfilter_conntrack
n libnetfilter_cthelper
n libnetfilter_cttimeout
n libnetfilter_log
n libnetfilter_queue
n conntrack-tools
l M2Crypto
n crda
n dnsmasq
l clucene
n dovecot
n ebtables
n elm
n epic5
n ethtool
n fetchmail
n getmail
n gpgme
n htdig
n icmpinfo
n iftop
n inetd
n iproute2
n iptraf-ng
n irssi
n iw
n libndp
n libnftnl
n mailx
n metamail
n mobile-broadband-provider-info
n mtr
n mutt
n nc
n ncftp
n netdate
n netkit-bootparamd
n netkit-ftp
n netkit-ntalk
n netkit-routed
n netkit-rsh
n netkit-rusers
n netkit-rwall
n netkit-rwho
n netkit-timed
n netpipes
n netwatch
n netwrite
n nfacct
n libtirpc
n iptables
n nftables
n nmap
n nn
n ntp
n openobex
n obexftp
n openvpn
l libmcrypt
l t1lib
n pidentd
n pinentry
n popa3d
n proftpd
n pssh
n rdist
n rp-pppoe
n rsync
n slrn
n stunnel
n tcp_wrappers
n telnet
n tftp-hpa
n tin
n traceroute
n uucp
n vlan
n vsftpd
n whois
n wireless_tools
n wpa_supplicant
n yptools
n ytalk
l newt
n NetworkManager
l GConf
l libgnome-keyring
l libsecret
l gmp
d gnucobol
n openldap-client
n netatalk
l loudmouth
n mcabber
n lynx
n newspost
n procmail
xap seyon
l ConsoleKit2
l LibRaw
l sip
l PyQt
l QScintilla
l QScintilla
l a52dec
l aalib
l alsa-oss
l aspell
extra aspell-word-lists 
l attica
l audiofile
l automoc4
l babl
l chmlib
l djvulibre
l libzip
l ebook-tools
l libzip
l eigen2
l eigen3
l esound
l exiv2
l fftw
l fribidi
l gamin
l gd
l gmime
l gmm
l grantlee
l gst-plugins-base0
l gst-plugins-good0
l gst-plugins-base
l gst-plugins-base
l gst-plugins-good
l hunspell
l icon-naming-utils
l ilmbase
l keyutils
l lcms
l lcms2
l libbluedevil
l libcddb
l libdbusmenu-qt
l libdiscid
l libexif
l libfakekey
l libgpod
l libgsf
l libidl
l libidn
l libieee1284
l taglib
l taglib-extras
l libkarma
l libsamplerate
l liblastfm
l libmng
l libmtp
l libnih
l libnjb
l libodfgen
l liboggz
l liboil
l libplist
l libraw1394
l libsndfile
l libspectre
l libvisual
l libvisual-plugins
l libvncserver
l libxklavier
l libyaml
l media-player-info
l mhash
l openexr
l orc
l phonon
l phonon-gstreamer
l pilot-link
l polkit-qt-1
l pycups
l pycurl
l python-pillow
l qca
l qimageblitz
l qjson
l qtscriptgenerator
l raptor2
l rasqal
l redland
l shared-desktop-ontologies
l soprano
l sound-theme-freedesktop
l strigi
l system-config-printer
l tango-icon-theme
l tango-icon-theme-extras
l urwid
l v4l-utils
l xapian-core
n ulogd
n tcpdump
y bsd-games
tcl hfsutils
d indent
n ipw2100-fw
n ipw2200-fw
ap pamixer
d pmake
n rpcbind
d scons
l serf
d scons
n zd1211-firmware
x libhangul
x anthy
x scim
x scim-anthy
x scim-hangul
l libpng
x scim-input-pad
l gd
x m17n-lib
x scim-m17n
x scim-pinyin
x scim-tables
x tibmachuni-font-ttf
x ttf-indic-fonts
x wqy-zenhei-font-ttf
x sinhala_lklug-font-ttf
x sazanami-fonts-ttf
ap ghostscript
ap moc
xap gv
l boost
l qt-gstreamer
l akonadi
ap slackpkg
d gdb
l gstreamer
l libbluray
l fluidsynth
l SDL2
l SDL2_gfx
l SDL2_image
l SDL2_mixer
l SDL2_net
l SDL2_ttf
l lame
l libwebp
l ffmpeg
xap audacious-plugins
l gst-plugins-libav
l libtiff
d cmake
l taglib
l alsa-plugins
n links
ap vim
n ulogd
n sshfs
xap hexchat
n ipset
xap xscreensaver
xap xv
n gpa
n libgcrypt
l gcr
l gnome-keyring
xap network-manager-applet
l glade3
l gvfs
l keybinder
l libiodbc
l libwmf
l libwnck
l polkit-gnome
l libsodium
n php
n nfs-utils
n libgcrypt
l soprano
xap MPlayer
xap xine-lib
xap xine-ui
kde kdelibs
kde kdebase
kde kdegraphics
kde kdebindings
kde kdemultimedia
kde kdeaccessibility
kde kdeutils
kde kdesdk
kde kdenetwork
kde kdeadmin
kde kdegames
kde kdetoys
kde kdeedu
kde extragear
kdei kde-l10n
kdei calligra-l10n
kde post-kde2
kde kdepim
d subversion
l libxml2
l ncurses
l virtuoso-ose
n openssl
n snownews
xap seamonkey
xap mozilla-firefox
xap mozilla-thunderbird
# l librsvg
# l gdk-pixbuf2
# l adwaita-icon-theme
# l libxml2
# l ncurses
# l virtuoso-ose
# n openssl
# n snownews
a end4
EOF
}


#************************************************************************
#************************************************************************
# MAIN CORE SCRIPT
#************************************************************************
#************************************************************************

lists_generator_c
