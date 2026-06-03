# Flyttar web-template -> web och git till HyrMer-roten.
# Kör från repo-roten: .\scripts\restructure-to-monorepo.ps1

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $root

if (-not (Test-Path 'web-template')) {
  if (Test-Path 'web') {
    Write-Host 'web/ finns redan – hoppar över rename.'
  } else {
    throw 'Varken web-template/ eller web/ hittades.'
  }
} else {
  Rename-Item -Path 'web-template' -NewName 'web'
  Write-Host 'Bytte namn: web-template -> web'
}

if (Test-Path 'web\.git') {
  if (Test-Path '.git') {
    throw 'Både web\.git och .git finns – avbryter.'
  }
  Move-Item -Path 'web\.git' -Destination '.git'
  Write-Host 'Flyttade .git till repo-roten.'
}

Set-Location $root
git add -A
Write-Host ''
Write-Host 'Nästa steg:'
Write-Host '  git config user.email "..."'
Write-Host '  git config user.name "..."'
Write-Host '  git commit -m "Restructure: move marketplace app into web/"'
Write-Host '  git remote remove origin'
Write-Host '  git remote add origin https://github.com/DITT-ANVÄNDARNAMN/hyrmer.git'
Write-Host '  git push -u origin main'