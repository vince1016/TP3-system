Get-EventLog -List 
Get-EventLog Application >> Logs.txt
Get-Content Logs.txt | where { $_ -like "**" }
Get-ChildItem -Recurse -Include.