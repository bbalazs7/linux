global_defs {
  enable_script_security
  script_user mysql
}

vrrp_script chk_mysqld {
  script "/usr/sbin/pidof mysqld"
  interval 2
  weight 2
}

# vrrp instance for mysqld
vrrp_instance mysqld {
  interface eth1
  state BACKUP
  virtual_router_id 100
  priority 100
  virtual_ipaddress {
     10.188.210.208/27 label eth1:1
  }

  track_script {
    chk_mysqld
  }

  unicast_src_ip 10.188.210.206
  unicast_peer {
        10.188.210.207
    }
}