package "elinks"
package "screen"
package "htop"
package "iotop"
package "telnet"
package "lsof"
package "lftp"
package "tcpdump"
package "iptables"
package "strace"
package "mlocate"
package "bc"
package "zip"
package "unzip"
package "traceroute"
package "jwhois"
package "sysstat"
package "logwatch"
package "kpartx"
package "tmux"

package "bind-utils" do
  case node[:platform]
  when "redhat","centos","scientific","fedora","suse","amazon"
    package_name "bind-utils"
  when "debian","ubuntu"
    package_name "dnsutils"
  end
  action :install
end

package "nc" do
  case node[:platform]
  when "redhat","centos","scientific","fedora","suse","amazon"
    package_name "nc"
  when "debian","ubuntu"
    package_name "netcat-openbsd"
  end
  action :install
end

package "vim" do
  case node[:platform]
  when "redhat","centos","scientific","fedora","suse","amazon"
    package_name "vim-enhanced"
  when "debian","ubuntu"
    package_name "vim"
  end
  action :install
end
package "mailx" do
  case node[:platform]
  when "redhat","centos","scientific","fedora","suse","amazon"
    package_name "mailx"
  when "debian","ubuntu"
    package_name "heirloom-mailx"
  end
  action :install
end
