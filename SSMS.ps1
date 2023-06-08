$chocoPath = 'C:\ProgramData\chocolatey'

if (Test-Path $chocoPath) {
    Write-Host "Chocolatey is already installed."
} else {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host "Installing SQL Management Studio..."