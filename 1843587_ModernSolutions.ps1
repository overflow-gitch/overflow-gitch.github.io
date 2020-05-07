function KillThatProcess($n){


Get-Process "$n"

$i = (Get-Process "$n").Count

Write-Host "there are $i instance(s) of the $n process. Would you like to terminate them? Y/N"

$y = read-host

if ($y.ToUpper() -like 'Y'){
kill -name "$n" | Write-Host all processes have been closed

}
else{
Write-Host termination process has been canceled

}

}

function Bamboozle($filepath){

Write-host $filepath

$alphabet = "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P","Q","R","S","T","U","V","W","X","Y","Z" | Get-Random

Write-host I predict that my grade for this assignment will be: $alphabet

$hunter = (Get-ChildItem -path $filepath -name $alphabet*) | Write-Host

$hunter | Remove-Item -WhatIf

Write-Host The files that start with $alphabet have been '"deleted"' in $filepath
}
## For some reason I cannot fathom, the script seems to work once and only once.
## Afterwards it simply shows the location of the file and that's all folks. Does not seem to do anything afterwards.
##while($X -notlike "Y"){ I wanted to have it loop, but for some reason, I could not run it, you'll have to live with the current set up.
##If you could explain to me why the above while loop would do this, I'd love some feedback!

Write-Host Do you want to open KillThatProcess? Y/N

$X = Read-Host

if($X -like "Y"){
Write-Host please enter the name of the process

$n = read-host

KillThatProcess ($n)
}

Write-Host Do you want to open Bamboozle? Y/N

$X = Read-Host

if($X -like "Y"){
$filepath = Get-location

Bamboozle ($filepath)
}else{
Write-host Then why did you open this script?
}

