#Kontrollere regnestykker
Write-Host "Dette program kontrollerer regnestykker fra filen calc2"

#Henter indholdet fra calc2-dokumentet
$regnestykker = Get-Content "calc2.txt"

#Læs indholdet fra filen. For hvert regnestykke skal den:
foreach ($regnestykke in $regnestykker)
{   
    
    $array = $regnestykke.Split(" ") #skal være med mellemrum ellers kan den ikke regne :)
    [int]$resultat = $array[0] #int foran tal. $resultat er array 0
    $ligmed = $array[1] #ligmed er array 1
    [int]$tal1 = $array[2] #tal2 er array 2 osv.
    $regneart = $array[3]
    [int]$tal2 = $array[4]

    #oversættelse af regneart så computeren forstår det
        if ($regneart -eq "+") #hvis regnearten er +, så er tal1 + tal2 = sum
        {
            $sum = $tal1 + $tal2
        }
        #hvis statementet ovenover ikke er sandt, så gå videre til den næste:
        elseif ($regneart -eq "-") 
        {
            $sum = $tal1 - $tal2
        }
        elseif ($regneart -eq "/") 
        {
            $sum = $tal1 / $tal2
        }
        elseif ($regneart -eq "*") 
        {
            $sum = $tal1 * $tal2
        }

        #om regnestykket er rigtigt eller forkert, når $sum sammenlignes med $resultat (det tal som står i filen)
        if ($sum -eq $resultat) #hvis regnestykket er rigtigt
        {
            Write-Host "$regnestykke er rigtigt, fordi resultatet er lig med $sum"  
        }
        elseif ($sum -ne $resultatet) #hvis regnestykket er forkert
        {
            Write-Host "$regnestykke er forkert, fordi resultatet er lig med $sum og ikke $resultat"
        }

}

