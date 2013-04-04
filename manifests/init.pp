#
# nscd module
#
# Copyright 2008, Puzzle ITC GmbH
# Copyright 2010, Atizo AG
# Copyright 2013, SWISS TXT
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi me(at)yokto(dot)net
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class nscd {
  package{'nscd':
    ensure => present,
  }
  service{'nscd':
    ensure => running,
    enable => true,
    hasstatus => true,
    require => Package['nscd'],
  }
}
