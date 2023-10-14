Write-Host "Dette program lægger to tal sammen, som du har skrevet"
[int]$tal1 = Read-Host "Indtast første tal"
[int]$tal2 = Read-Host "Indtast andet tal"
$sum = $tal1 + $tal2
Write-Host "Resultatet er $sum"