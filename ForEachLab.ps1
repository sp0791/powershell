##### Loops help repeat a certain action example create multiple folders
##### multiple ways to create loops - performance differnces 

New-Item -Path "$folderPath" -Name $folderNames[0] -ItemType Directory    #### Creates a Folder Using first Line in Text File

####### If statement to create folders takes a long time
if((Test-Path -Path "$folderPath\$($folderNames[0])") -eq $false){
    New-Item -Path "$folderPath" -Name $folderNames[0] -ItemType Directory
}else{
    Write-Output "Folder exists"
}

##### foreach method 1
foreach($name in $folderNames){
    if((Test-Path -Path "$folderPath\$($name)") -eq $false){
        New-Item -Path "$folderPath" -Name $name -ItemType Directory
    }else{
        Write-Output "Folder exists"
    }
}

##### foreach method 2 - cmdlet and pipeline

$folderNames | ForEach-Object -Process {
    if((Test-Path -Path "$folderPath\$($_)") -eq $false){
        New-Item -Path "$folderPath" -Name $_ -ItemType Directory
    }else{
        Write-Output "Folder exists"
    }
}

##### foreach method 3 - fast
$folderNames.ForEach(
    {
        if((Test-Path -Path "$folderPath\$($_)") -eq $false){
            New-Item -Path "$folderPath" -Name $_ -ItemType Directory
        }else{
            Write-Output "Folder exists"
        }
    }
)