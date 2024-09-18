##### conditional statement needs operators 
####  Comparison Operators  -eq (equals) -ne (not equal), -gt (greater than), -lt (less than), -le (less or equals too), -ge (greater or equal too)
##### assignment operators (=, +=, -=, *=, /=, %=) to assign, change, or append values to variables
#### logical operators (-and, -or, -xor, -not, !) to connect conditional statements into a single complex conditional

@(1,2,3) -contains 2 ##### array comes back as true
'Test' -eq 'TEST'     ### result is true as not case sensitive 

$filePath="C:\Users\sapat\Documents\Scripts\array.ps1"    ### create variable of a filepath
Test-Path -Path $filePath     ##### check if file exists

if(Test-Path -Path $filepath){
    Write-Output "File Exists"
    Get-Content -Path $filePath
}else {
    Write-Output "File '$filepath' does not exist!"
}