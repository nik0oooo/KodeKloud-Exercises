class httpd_installer {

    package {'httpd':

        ensure => installed
    }
    service {'httpd':
    
        ensure    => running,

        enable    => true,
    }
}
node 'stapp03.stratos.xfusioncorp.com' {

  include httpd_installer

}
