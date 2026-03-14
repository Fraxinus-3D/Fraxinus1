$env:Path = $env:Path + ";C:\Program Files\stl-thumb;C:\Program Files\stl-thumb\bin"
$current_path=(Convert-Path .)

Get-ChildItem -Path $current_path -Recurse -File -Name -Include *.stl | ForEach-Object {
  Write-Host $_
  stl-thumb.exe $current_path\$_ $current_path\images\$_.png
}
