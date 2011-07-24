Veewee::Environment.declare({
  :cpu_count => '1', :memory_size=> '256', 
  :disk_size => '10140', :disk_format => 'VDI',:hostiocache => 'off',
  :os_type_id => 'ArchLinux',
  :iso_file => "archlinux-2010.05-core-i686.iso",
  :iso_src => "http://archlinux.mirror.kangaroot.net/iso/2010.05/archlinux-2010.05-core-i686.iso",
  :iso_md5 => "5db5fd11713635cff208b11a498c59ef",
  :iso_download_timeout => "1000",
  :boot_wait => "5", :boot_cmd_sequence => [
    '<Enter>',
    '<Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait>',
    '<Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait>',
    '<Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait>',
	'root<Enter>',
    'dhcpcd eth0<Enter><Wait><Wait>',
    'echo "sshd: ALL" > /etc/hosts.allow<Enter>',
    'passwd<Enter>',
    'vagrant<Enter>',
    'vagrant<Enter>',
    '/etc/rc.d/sshd start<Enter><Wait>',
	'sleep 3 && wget 10.0.2.2:7122/aif.cfg<Enter>',
  ],
  :kickstart_port => "7122", :kickstart_timeout => "10000", :kickstart_file => "aif.cfg",
  :ssh_login_timeout => "10000", :ssh_user => "root", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "sh '%f'",
  :shutdown_cmd => "shutdown -h now",
  :postinstall_files => [ "postinstall.sh"], :postinstall_timeout => "10000"
})
