#######################################
# nscd module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "nscd": }
class nscd {
    include nscd::base
}

class nscd::base {
    package{nscd:
        ensure => present,
    }

    service{nscd:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package[nscd],
    }
}
