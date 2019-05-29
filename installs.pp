if $facts['os']['name'] == 'windows' and $facts['networking']['hostname'] =~ /^CHI-GFX-./{

package {'FileZilla Client 3.36.0':
        ensure => '3.36.0',
        source => '\\\\chi-carb-wds\\Software\\Filezilla\\FileZilla_3.36.0_win64-setup.exe',
        install_options => ['/S', '/user=all'],
}

package {'Python 2.7.15 (64-bit)':
        ensure => '2.7.15150',
        source => '\\\\chi-carb-wds\\Software\\Python\\python-2.7.15.amd64.msi',
	install_options => ['/qn', '/norestart', 'ALLUSERS=1', 'ADDLOCAL=Extensions'],
}

}
