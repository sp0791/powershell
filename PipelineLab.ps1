###### A pipeline is a series of commands connected by pipeline operators (|) Each pipeline operator sends the results of the preceding command to the next command. #######
###### The output of the first command is sent to the second command, which can be sent to another command creating a complex command chain or pipeline #######
###### example - Command-1 | Command-2 | Command-3 ######
###### You can pipe objects to the formatting, export, and output cmdlets, such as Format-List, Format-Table, Export-Clixml, Export-CSV, and Out-File. ######

Get-Service   ####gets all services on computer - running or stopped

Get-Service -Name Spooler   #### shows service names spooler

$serviceName = "Spooler"  #### create variable, if using multiple times in code
Get-Service -Name $serviceName

start-service -name $serviceName    #### start service 

(Get-Service -Name $serviceName).GetType()  ### shows type ServiceController


Get-Service -Name $serviceName | Stop-Service     #### stop a service via pipe command

$serviceName | Get-Service  ##### shows service only spooler 

$serviceName | Get-Service | Start-Service   #### starts service spooler (keep piping forward)

$service=New-Object -TypeName System.Collections.ArrayList     #####create an array
$service.add(@('spooler','w32time'))     ### add services to array
$service | Get-Service         ### pipeline to get service

$service | Get-Service | ForEach-Object {Write-Output "Service : $($_.DisplayName) is currently $($_.status)"}     ###### user friendly output 

$service | Get-Service | Start-Service