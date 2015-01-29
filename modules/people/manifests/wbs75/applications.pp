class people::wbs75::applications {

    include bash
    include bash::completion

    git::config::global { 'user.name':
        value => 'wbs75',
    }

    git::config::global { 'user.email':
        value => 'wbs75@me.com',
    }

    package {'packer':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package {'brew-pkg':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package { 'gptfdisk': }
    package { 'ssh-copy-id': }
    package { 'wget': }

}

