Get-ChildItem -Path C:\ -Recurse -File | `
    Sort-Object Length | `
    Select-Object -Last 15 | `
    Select-Object Name, @{Name="Size (GB)";Expression={"{0:N2}" -f ($_.Length / 1GB)}}
