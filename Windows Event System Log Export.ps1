$logName = "System"
$exportPath = "C:\Logs\events-System.csv"

$events = Get-WinEvent -LogName $logName -MaxEvents 1000

$events | Select-Object TimeCreated, Id, LevelDisplayName, Message | Export-Csv -Path $exportPath -NoTypeInformation

Write-Host "Event Log Export Complete"
Write-Host "File saved at: $exportPath"