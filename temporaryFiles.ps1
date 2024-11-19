$directories = @(
    "$env:USERPROFILE\AppData\Local\Temp",
    "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Temporary Internet Files",
    "$env:LOCALAPPDATA\Microsoft\Windows\Temporary Internet Files",
    "C:\Windows\Temp",
    "C:\Windows\Prefetch"
)

foreach ($dir in $directories) {
    if (Test-Path -Path $dir) {
        Write-Host "Deleting files in $dir"
        Get-ChildItem -Path $dir -Recurse -File | Remove-Item -Force
    } else {
        Write-Host "The directory $dir does not exist."
    }
}
