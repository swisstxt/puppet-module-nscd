class nscd::disable inherits nscd {
  Service['nscd'] {
    ensure => stopped,
    enable => false,
  }
}
