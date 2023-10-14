#Folk skriver sit fulde navn ind, og det kommer ud med initialer
#Skriv Initials("navnet") for at få initialerne frem

Function Initials
{
#parameter - ens input - inputtet er folks navn
  Param($navn = " ")

  #når der er et mellemrum mellem de input (folks indtastede navne), man får i $navn, så splitter den navnet ad 
  #og putter ind i forskellige arrays/rækker i $navne
  #I praksis vil det se sådan ud:
  #fornavnet i række nr. 0
  #mellemnavnet i række nr. 1
  #efternavnet i række nr. 2
  $navne = $navn.Split(" ")

  #hvis der er 3 navne i $navne
  if ($navne.count -eq 3) 
    {
        #tager fornavn, mellemnavn og efternavn fra $navne
        $fornavn = $navne[0] #fornavn er på plads 0
        $mellemnavn = $navne[1] #mellemnavn er på plads 1
        $efternavn = $navne[2] #efternavn er på plads 2

        #output - de 2 første initialer fra fornavnet, første initial fra mellemnavn og efternavnet
        return "Dine initialer: " + $fornavn[0] + $fornavn[1] + $mellemnavn[0] + $efternavn[0]

    }
    #hvis der kun er 2 navne
  if ($navne.count -eq 2) 
    {
        $fornavn = $navne[0] #fornavnet er placeret på plads 0
        $efternavn = $navne[1] #efternavnet er placeret på plads 1

        #output
        return "Dine initialer: " + $fornavn[0] + $fornavn[1] + $efternavn[0]

    }
    #hvis der er et navn
   if ($navne.count -eq 1)
    {
        $fornavn = $navne[0]
        Write-Host "This doesn't work"
    }

}


