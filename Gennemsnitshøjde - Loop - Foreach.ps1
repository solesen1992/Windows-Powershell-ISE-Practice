#Foreach er god når jeg har et antal elementer der skal behandles ad angen
#Udregner gennemsnitshøjden

$sum=0

$hoejder = (1.75, 1.85, 1.68, 1.88, 1.74, 1.78)

foreach($hoejde in $hoejder) #tag højderne fra $hoejder og læg ind i variablen $hoejde
{
    #første runde: 1.75 + 0 = 1.75 (1.75 er ens nye sum). Derfor man er nødt til at sige, hvad summen er til at starte med.
    #ellers ved man ikke, hvad man skal plusse med i første runde.
    #næste runde: 1.85 + 1.75 (ens sum) = nye sum
    #næste runde: 1.68 + (nye sum) = mere ny sum
    $sum = $sum + $hoejde
}

#summen af alle tallene deles med antal numre (6 stk), der står i hoejder = Det er højde gennemsnittet.
$hoejde_gennemsnit = $sum / $hoejder.Count #når alle højder i $hoejder er gået igennem, så fortsætter programmet efter loopet

Write-Host "Vores gennemsnitshøjde er $hoejde_gennemsnit"
