Get-ChildItem -Path "C:\User\Downloads" -Recurse -File | `
Group-Object { $_.BaseName -replace '\d+$', '' } | `
Where-Object { $_.Count -gt 1 } | `
ForEach-Object {
    Write-Output "Similar files :"
    $_.Group | Select-Object FullName
    Write-Output ""
}
