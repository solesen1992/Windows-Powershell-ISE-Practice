Write-Host "Dette program laver initialer ud fra folks navne i filen users2000.csv"

#Henter indholdet fra calc2-dokumentet
$navne = Get-Content "users2000.csv"

#Læs indholdet fra filen. For hvert navn skal den:
foreach ($navn in $navne)
{   
    #når der er et mellemrum mellem de input (folks indtastede navne), man får i $navn, så splitter den navnet ad 
    #og putter ind i forskellige arrays/rækker i $navne
    #I praksis vil det se sådan ud:
    #fornavnet i række nr. 0
    #mellemnavnet i række nr. 1
    #efternavnet i række nr. 2
    $navne = $navn.Split(" ")
    
    if ($navne.count -eq 3) 
    {
        #tager fornavn, mellemnavn og efternavn fra $navne
        $fuldenavn = $navne
        $fornavn = $navne[0] #fornavn er på plads 0
        $mellemnavn = $navne[1] #mellemnavn er på plads 1
        $efternavn = $navne[2] #efternavn er på plads 2

        #output - de 2 første initialer fra fornavnet, første initial fra mellemnavn og efternavnet
        #return "Initialerne for $fuldenavn : " + $fornavn[0] + $fornavn[1] + $mellemnavn[0] + $efternavn[0]
        Write-Host "Initialerne for $fuldenavn er: "$fornavn[0], $fornavn[1], $mellemnavn[0], $efternavn[0]

    }
    #hvis der kun er 2 navne
    elseif ($navne.count -eq 2) 
    {
        $fuldenavn = $navne
        $fornavn = $navne[0] #fornavnet er placeret på plads 0
        $efternavn = $navne[1] #efternavnet er placeret på plads 1

        #output
        #return "Initialerne for $fuldenavn : " + $fornavn[0] + $fornavn[1] + $efternavn[0]
        Write-Host "Initialerne for $fuldenavn er: "$fornavn[0], $fornavn[1], $efternavn[0]
    }
    
    #hvis der er et navn
    elseif ($navne.count -eq 1)
    {
        $fuldenavn = $navne
        $fornavn = $navne[0]
        Write-Host "Initialerne for $fuldenavn er: "$fornavn[0], $fornavn[1]
    }

}

