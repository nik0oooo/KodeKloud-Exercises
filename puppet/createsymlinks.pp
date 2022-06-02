class symlink {

  # preferred symlink syntax
  file {'/opt/devops':
    ensure => 'link',
    target => '/var/www/html',
  }
  
  file{'/opt/devops/media.txt':
    ensure => 'present'
  }
}
node 'stapp01.stratos.xfusioncorp.com'{
  include symlink
}
