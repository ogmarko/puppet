
if $facts['networking']['hostname'] =~ /^CHI-GFX-./{
host { 'SERVERNAME':
        ip => 'IPADDRESS',
        host_aliases => 'SERVER',
        ensure => 'present',
        target => 'C:\Windows\System32\drivers\etc\hosts',
        }



}

