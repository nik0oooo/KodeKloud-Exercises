class file_create  {
  file {'/opt/finance/news.txt': 
   ensure => 'present',
  }
}

node 'stapp02.stratos.xfusioncorp.com'{
  include file_create
}
