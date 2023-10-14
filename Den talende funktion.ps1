#Skriv WriteIt ("tekst man vil skrive") for at bruge funktionen


Function WriteIt
{
  Param($text = "Hello there!")

  return "I wrote: "+$text
  
}

Function SayIt
{
  Param($text = "Hello there!")
  Add-Type -AssemblyName System.speech
  $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
  $speak.speak("I wrote: $text")
}