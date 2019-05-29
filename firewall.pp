
class { 'windows_firewall': ensure => 'running' }

windows_firewall::exception { '3dsMax':
	ensure => present,
	direction => 'in',
	action => 'Allow',
	enabled => 'yes',
	protocol => 'TCP',
	program => 'c:\program files\autodesk\3ds max 2018\3dsmax.exe',
	display_name => '3ds Max',
	description => '3ds Max',
}

windows_firewall::exception { 'Hython':
        ensure => present,
        direction => 'in',
        action => 'Allow',
        enabled => 'yes',
        protocol => 'TCP',
        program => 'c:\program files\side effects software\houdini 16.5.439\bin\hython.exe',
        display_name => 'Hython',
        description => 'Hython',
}
windows_firewall::exception { 'Nuke11.1v4':
        ensure => present,
        direction => 'in',
        action => 'Allow',
        enabled => 'yes',
        protocol => 'TCP',
        program => 'c:\program files\nuke11.1v4\nuke11.1.exe',
        display_name => 'Nuke11.1v4',
        description => 'Nuke11.1v4',
}
windows_firewall::exception { 'NukePython':
        ensure => present,
        direction => 'in',
        action => 'Allow',
        enabled => 'yes',
        protocol => 'TCP',
        program => 'c:\program files\nuke11.1v4\python.exe',
        display_name => 'NukePython',
        description => 'NukePython',
}

windows_firewall::exception { 'DeadlineSlaveC':
	ensure => present,
	direction => 'in',
	action => 'Allow',
	enabled => 'yes',
	protocol => 'TCP',
	local_port => '49824',
	remote_port => 'any',
	display_name => 'DeadlineSlaveC',
	description => 'DeadlineSlaveC',
}

windows_firewall::exception { 'Vrayspawn':
        ensure => present,
        direction => 'in',
        action => 'Allow',
        enabled => 'yes',
        protocol => 'TCP',
        local_port => '20207',
        remote_port => 'any',
        display_name => 'Vrayspawn',
        description => 'Vrayspawn',
}
