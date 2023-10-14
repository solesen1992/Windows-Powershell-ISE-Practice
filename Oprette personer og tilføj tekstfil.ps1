#Oprette personer

#personen skriver sit fornavn og alder
$fornavn = Read-Host "Hvad er dit fornavn?"
$alder = Read-Host "Hvad er din alder?"

#fornavn og alder gemmes i $linje som fornavn,alder
$line = "$fornavn,$alder"
#Kan også lave komma imellem ved at skrive $line = $fornavn + "," + $alder

#line tilføjer oplysningerne til users.txt
$line | Add-Content "users.txt"
#Den skriver en tekst til filen users.txt, som gemmer sig i C:/Users/Saram

#$lines er indholdet i user dokumentet. Henter indholdet fra users-dokumentet
$lines = Get-Content "users.txt"

#Læs indholdet fra filen
foreach ($line in $lines)
{   
    #Oplysningerne deles af et komma ",". Navn er array 0 og alder er array 1.
    #Hvis array-delen sættes længere oppe (før add content), så gentager den bare det navn og alder, 
    #som jeg har sat ind XX gange. Hvis den sættes ind her, så viser den både knud, kurt, markus, mark osv.
    #og ikke kun det samme navn og alder igen og igen.
    
    $array = $line.Split(",") 
    #fjernes split, så tager den de to første bogstaver i fornavnet.
    #så der står f.eks. s : a og lignende bogstaver ned af rækken.
    
    $fornavn = $array[0]
    $alder = $array[1]
    Write-Host "$fornavn : $alder"
}
