Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.speak("Hello World")
#Får computeren til at sige Hello world