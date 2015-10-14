class docker::repo::apt(
   $release  = undef,
){
  if ($::operatingsystem == 'Ubuntu') {
    include apt::update

    apt::source { 'docker':
         location => 'http://apt.dockerproject.org/repo',
         release   => $release,
         repos    => 'main',
         key      => '58118E89F3A912897C070ADBF76221572C52609D',
         key_source => 'http://apt.dockerproject.org/gpg',
         include_src => false,
    }
    include apt::update
  }
}
