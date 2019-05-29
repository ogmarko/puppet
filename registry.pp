
if $facts['networking']['hostname'] =~ /^CHI-FARM-./{
  registry::value {'DefaultDomainName':
    key => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon',
    value => 'DefaultDomainName',
    data  => 'whitehousepost.com',
    }


  registry::value { 'DefaultUserName':
    key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon',
    value => 'DefaultUserName',
    data  => 'chifarmuser',
    }

  registry::value { 'DefaultPassword':
    key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon',
    value => 'DefaultPassword',
    data  => 'PASSWORD',
    }

  registry::value { 'AutoAdminLogon':
    key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon',
    value => 'AutoAdminLogon',
    data  => '1',
    }
}

