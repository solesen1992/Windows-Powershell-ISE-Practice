Write-Host "Dette program lægger to tal sammen, som du har skrevet"
[int]$tal1 = Read-Host "Indtast første tal"
[int]$tal2 = Read-Host "Indtast andet tal"
do { #Hvis brugeren ikke har skrevet +, -, / eller * så bliver den ved med at spørge om den rigtige regneart. Et loop.
    $regneart = Read-Host "Indtast en regneart (+, -, / eller *)"
} while (!"+-/*".Contains($regneart))

$resultat = 0

#hvis regneart er +, så er resultatet $tal1 + $tal2
if ($regneart -eq "+") 
{
    $resultat = $tal1 + $tal2
}
#hvis statementet ovenover ikke er sandt, så gå videre til den næste:
elseif ($regneart -eq "-") 
{
    $resultat = $tal1 - $tal2
}
elseif ($regneart -eq "/") 
{
    $resultat = $tal1 / $tal2
}
elseif ($regneart -eq "*") 
{
    $resultat = $tal1 * $tal2
}


Write-Host "Resultatet er $resultat"
#computeren er nødt til at gøre noget forskelligt, alt efter, hvad der står i regnearket.