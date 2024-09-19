###### try, catch, try catch finally statement - good for database, api connections, remote connection
####### final block is important to stop all connections
##### handle errors
###### non terminating errors - so the script will not stop
##### tell powershell to stop on error

######## non terminating error example
$filePath="C:\Users\sapat\Documents\Scripts\ErrorHandlingLab1.ps1"
$files=Get-ChildItem -Path $filePath
$files.foreach({
    write-output $_.name
    
})
Write-Output "this is after error"

#### error handling try catch  
try{
    $filePath="C:\Users\sapat\Documents\Scripts\ErrorHandlingLab1.ps1"
$files=Get-ChildItem -Path $filePath -ErrorAction Stop
$files.foreach({
    write-output $_.name
    
})
Write-Output "this is after error"

}catch{
Write-Output $_.Exception.Message
}

######### $ErrorActionPreference="Stop"     #### changing default error action
##### when doing a method do try catch

###### array list called error
$Error[0]    ######### latest error most recent

####### try catch finally   --- finally runs no matter what
$ErrorActionPreference="Stop"
try{
    $filePath="C:\Users\sapat\Documents\Scripts\ErrorHandlingLab.ps1"
$files=Get-ChildItem -Path $filePath
$files.foreach({
    write-output $_.name
    
})
Write-Output "this is after error"

}catch{
Write-Output "caught error"
}finally{
    Write-Output "this will always run"
}

