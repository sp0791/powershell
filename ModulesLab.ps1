#### install and download modules and where that are installed
####envirnoment variable
####### 
$env:PSModulePath          #### list of directories where modules can be installed in
$($env:PSModulePath).split(';')    ##### nice list of where modules are installed

Get-Module    ##### cmdlet for modules loaded into session (default)

Get-Module -ListAvailable                     ######################## currently installed

###### import a module

import-Module -Name ScheduledTasks      ########import module to session
Get-Module

Get-Command -Module ScheduledTasks

Get-ScheduledTask

Remove-Module (module)   ####### remove module

##### update module Import-Module -Name __  -Force      ##### update the function if downloaded for internet example

Find-Module -Name AzureAD      ##### installing a module 
Remove-Module AzureAD
Install-Module -Name AzureAD -Force
Import-Module AzureAD
Get-Module
Uninstall-Module -Name AzureAD

###### you can use internet to find modules powershellgallery.com ### can manual download 