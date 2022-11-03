$Inventory = New-Object System.Collections.ArrayList
$AllComputers = gc C:\users\admin\desktop\server.txt
foreach($computers in $allcomputers){
$Computers

$ComputerInfo = New-Object System.Object
$ntp = w32tm /query /computer:$computers /source

$ComputerInfo |Add-Member -MemberType NoteProperty -Name "ServerName" -Value "$Computers"

$ComputerInfo |Add-Member -MemberType NoteProperty -Name "NTP Source" -Value "$Ntp"

$Inventory.Add($ComputerInfo) | Out-Null
}

$Inventory | Export-Csv C:\Users\ItProTv-edu\Security+\OpSec-Incident-Response\Digital-Forensics\Google-Test-Script-NTP.csv -NoTypeInformation