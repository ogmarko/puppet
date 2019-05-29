
if $facts['networking']['hostname'] =~ /^CHI-GFX-./{


package { 'mocha Pro Plugin V5.6.0 for OFX':
        ensure => '5.6.0',
        source => '\\\\chi-carb-wds\\Software\\Boris\\Mocha Pro\\mochaProOFX-5.6.0-1601.gcc41335b663b.win.msi',
        install_options => ['/quiet'],
}

package { 'Baselight Nuke11.1 5.1.10806':
        ensure => '5.1.10806',
        source => '\\\\chi-storage\\Projects\\library\\installers\\baselightForNuke\\Baselight_for_Nuke11.1_5.1.10806.msi',
        install_options => ['/quiet'],
}

package { 'Nuke 11.1v4':
	ensure => 'present',
	source => '\\\\chi-carb-wds\\Software\\Foundry\\Nuke11.1v4-win-x86-release-64.exe',
	install_options => ['/verysilent'],
}

package { 'Forest Pack Pro 6.1.1':
        ensure => 'present',
        source => '\\\\chi-carb-wds\\Software\\iToo Software\\ForestPackPro611_x64.exe',
        install_options => ['/S', '/LICMODE=network', '/LICHOUSE=chi-carb-license'],
}
file { 'C:\\tmp\\2018.xml':
        ensure => present,
        source => '\\\\chi-carb-wds\\Software\\Chaos Group\\2018.xml',


}

file {'C:\\Program Files\\Nuke11.1v4\\Optical Flares Presets':
	ensure => 'directory',
	source => '\\\\chi-carb-wds\\Software\\VideoCopilot\\Optical Flares Presets',
	path => 'C:\\Program Files\\Nuke11.1v4\\Optical Flares Presets\\',
	recurse => 'true',
}

file { 'C:\\Program Files\\Nuke11.1v4\\Optical Flares Textures':
        path => 'C:\\Program Files\\Nuke11.1v4\\Optical Flares Textures',
        ensure => 'directory',
	source => '\\\\chi-carb-wds\\Software\\VideoCopilot\\Optical Flares Textures',
        recurse => 'true',
}

file { 'C:\\Program Files\\Nuke11.1v4\\OpticalFlaresLicense.lic':
	ensure => present,
	source => '\\\\chi-carb-wds\\Software\\VideoCopilot\\OpticalFlaresLicense.lic',

}
}
