#Gæt et tal mellem 1 og 100
#Hvis gættet er for højt, så skal programmet sige: Det er for højt
#Og så må brugeren gætte igen

Write-Host "Gæt et tal mellem 1 og 100"
#brugerens gæt er #gæt

$secret = Get-Random -Maximum 100 #computerens tal


#do { #Hvis brugeren ikke har skrevet tallet/secret så bliver den ved med at spørge om det rigtige tal. Et loop.
 #   [int]$gæt = Read-Host "Hvilket tal gætter på du mellem 1 og 100?"

    if ($gæt -gt $secret) 
    {
        Write-Host "Gættet er for højt. Hvilket tal gætter på du mellem 1 og 100?"
    }
    elseif ($gæt -lt $secret) 
    {
        Write-Host "Gættet er for lavt. Hvilket tal gætter på du mellem 1 og 100?"
    }
    elseif ($gæt -eq $secret) 
    {
        Read-Host "Gættet er rigtigt"
    }
} #while ($gæt -ne $secret) #så længe $gæt ikke matcher $secret, så skal den blive ved med at køre loopet.


Read-Host "Resultatet er $secret"