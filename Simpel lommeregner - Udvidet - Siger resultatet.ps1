Write-Host "Dette program lægger to tal sammen, som du har skrevet"
[int]$tal1 = Read-Host "Indtast første tal"
[int]$tal2 = Read-Host "Indtast andet tal"
$regneart = Read-Host "Indtast regneart (+, -, /, *)"
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

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.speak("Resultatet er $resultat")
#Får computeren til at sige resultatet

#computeren er nødt til at gøre noget forskelligt, alt efter, hvad der står i regnearket.