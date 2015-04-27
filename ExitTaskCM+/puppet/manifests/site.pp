# /etc/puppet/manifests/site.pp

node default {

package { 'httpd':
        ensure=>'installed'
}

notify { 'httpd is installed.':
}

service { 'httpd':
        ensure=>'running'
}

notify { 'htppd is running.':
}

package { 'mysql':
        ensure=>'installed'
}

notify { 'mysql is installed.':
}

service { 'mysql':
        ensure=>'running'
}

notify { 'mysql is running.':
 
}

exec { "hash": 
command => "wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-6/v6.0.43/bin/apache-tomcat-6.0.43.zip",

}


exec { "hash1": 
command => "wget https://github.com/rightscale/examples/blob/unified_application/common/sql/app_test.sq",

}

}