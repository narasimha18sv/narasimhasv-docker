class docker::install{

  package{'docker-engine':
     ensure  => latest,
     require  => Class['docker::repo::apt'],
  }

}

