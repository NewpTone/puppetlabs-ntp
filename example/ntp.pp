host {'ntp-server': 
    name => 'ntp.sjtu.edu.cn',
    ip   => '202.120.2.101',
}

class {'ntp':
     servers    => [ 'ntp.sjtu.edu.cn' ],                                       
     autoupdate => false,                                                     
     require    => Host['ntp-server'] 
}


