#### Great for iteration example array
#### ForEach is better for creating a new array with modified data to keep the original safe.

for($i=0;$i -lt 10;$i=$i++){
    Write-Output $i
}

$testArray=@('Bella', 'Stella', 'Orphan')

for($i=0;$i -lt $testArray.Length;$i++){
    Write-Output $testArray[$i]
}

for($i=0;$i -lt $testArray.Length;$i++){
    $testArray[$i]+=' Doe'
}

##### while loop if condition is true execute code -example run something every 5 minutes
##### while true loop runs forever -infinte loop

get-date
while((get-date).minute -eq 02){
    get-date
}

while($true){
    Write-Output "welcome to the app"
    Write-Output "enter q to quit"

    $input = Read-host -prompt "please enter a phrase"
    if($input -eq 'q'){
        break
    }
        Write-Output "you entered: $input"
}

###### dowhile loop

do{                     ###### execute once use do while loop
Write-Output "Hi"
}while($false)

Write-Output "welcome to the app"
Write-Output "enter q to quit"

do{
    $input=Read-Host -Prompt "please enter a phrase"
    Write-Output "you entered $input"
}while($input -ne 'q')