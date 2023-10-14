$text = Read-Host "Skriv til filen"
$text | Add-Content "tekstfil.txt"
#Den skriver en tekst til filen tekstfil.txt, som gemmer sig i C:/Users/Saram
#Kan også skrive hele dens url path fx C:/users/saram/documents/tekstfil.txt 
#(husk: omvendte /-tegn i stedet i dens url, hvis det skal bruges)
#Kan skrive $text | Out-File -FilePath "tekstfil.txt" og så opretter den selv filen.

#Læs indholdet fra filen
$indhold = Get-Content "tekstfil.txt" #Smider tekstfilens indhold/det man har skrevet over i $indhold
#Write-Host $indhold

foreach ($linje in $indhold)
{ 
    Write-Host $linje
}
