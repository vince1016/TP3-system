$Rechercher = $Args[0]
$Changer = $Args[1]
$fichiers = get-childItem -include *.txt, *.csv, *.doc, -recurse
$message = read-host -prompt "remplacer la chaine $Changer avec la valeur placer dans le fichier $fichiers (o/n)"



if ($message -eq "o")
{
$content = Get-Content "fichiers\texte\texte.txt" | foreach { $_ -replace $Rechercher,$Changer }
Set-Content -path $fichiers -Value $content
Write-Output "Le remplacement a corectement ete effectue."
}
else{
    Write-Output "Aucun changement n'a ete aporter"
}

