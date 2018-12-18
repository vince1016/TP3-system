$folder = "C:\Users\Vince\Documents\GitHub\TP3 system\TP3-system\fichiers"
$files = get-childitem $folder

# La chaine de caracteres a trouver dans les fichiers et celle de remplacement
$stringToReplace = Read-Host -Prompt 'Input the string to change'
$replacementString = Read-Host -Prompt 'Input the string you want insted'

# On boucle sur tous les fichiers pour effectuer les changements
foreach ($file in $files)
{
    $fileContent = Get-Content $file.fullName
    
    if (($file.GetType().Name -eq 'FileInfo') -and ($fileContent.Contains($stringToReplace))) {  
        (Get-Content $file.fullName) | Foreach-Object {$_ -replace $stringToReplace, $replacementString} | Set-Content $file.fullName
        Write-Host "$($file.fullName) -- $stringToReplace a été remplacé par $replacementString" -ForegroundColor "Green"
    }
}