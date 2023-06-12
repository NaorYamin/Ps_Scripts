#FSLogix Configuration
write-host "Configuring FSLogix"

New-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "ClearCacheOnLogOff" -Value 1 -force
New-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "KeepLocalDir" -Value 0 -force
New-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "PreventLoginWithFailure" -Value 1 -force


