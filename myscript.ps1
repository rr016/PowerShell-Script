Add-Type –AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$joke = (wget http://geek-jokes.sameerkumar.website/api).Content
Write-Host $joke
$speak.Speak($joke)