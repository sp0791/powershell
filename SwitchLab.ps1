$filePath="C:\Users\sapat\Documents\Scripts\SwitchLab.txt"      #### create a variable for file path

$Data=Get-Content -Path $filePath   ###### data variable to store data in file
$Data
$Data.Count      #### output number of lines

$firstName=$data[0]      ##### data gets treated as an array - can reference first value as [0]
###### If statement 
if($firstName -eq 'Bella'){
    Write-Output "My name is Bella"
}elseif ($firstName -eq 'Penny') {
    Write-Output "My name is Penny"
}elseif ($firstName -eq 'Amy') {
    Write-Output "My name is Amy"
}else{
    Write-Output "I don't know my name!"
}

### Switch statement - good for evalutaing one variable - runs faster than If statements (include breaks)
$firstName="Goth"

switch($firstName){
    "Bella"{
        Write-Output "My name is Bella"
        break 
    }
    "Penny"{
         Write-Output "My name is Penny"
         break
    }
    "Amy"{
        Write-Output "My name is Amy"
        break
    }
    default{
        Write-Output "I don't know my name!"
        break
    }
}

####### complicates switch statement
switch($Data.count){
   {$_ -lt 2}{
    Write-Output "file is less than 2 line"
    break
   }
   {$_ -eq 7}{
    Write-Output "file has 7 lines"
    break
   }
   {$_ -lt 10}{
    Write-Output "file has less than 10 lines"
    break
   }
   default {
    Write-Output "this file has more than 10 lines"
    break
   }
}