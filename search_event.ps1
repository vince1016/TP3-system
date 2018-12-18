Function Events_search { $machine= Read-Host � Num�ro de machine � ### Test de connection � la machine ### if ( Test-Connection $machine -count 1 -delay 1 -quiet )
{
Write-host -nonewline � R�cuperation des donn�es sur $machine�. � n
}
else
{
Write-host -nonewline "Machine inexistante ou non conect�es" n
exit
} ### Recuperation des variables ### $path= � C:ScriptsLogevent.txt �
$n= Read-Host � Journal apartir du:(Date format jjmmaa) �
$date = Get-date $n
$logtype= Read-Host � Type de log :
ACEEventLog
Application
HardwareEvents
Internet Explorer
Key Management Service
Media Center
OAlerts
Security
System
Windows PowerShell �
$typevent= Read-Host � Criticiter des messages :
Information
Warning
Error �
Write-host -nonewline � Traitement des infos pour la machine $machine � partir de la date du $n dans $path � n ###Execution de la commande ### Get-Eventlog -computername $machine -after $date -logname $logtype -EntryType $typevent | format-list -property EventID,MachineName,Message,Source,ReplacementStrings,UserName
Write-host -nonewline "Fini !" n
} Events_search