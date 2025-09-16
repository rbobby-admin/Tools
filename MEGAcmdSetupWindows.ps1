# PowerShell script to download MEGAcmd for Windows 64-bit

# Set download URL (official MEGA.nz distribution link for 64-bit Windows)
$downloadUrl = "https://mega.nz/MEGAcmdSetup64.exe"

# Set output path (Downloads folder)
$outputPath = "$env:USERPROFILE\Downloads\MEGAcmdSetup64.exe"

Write-Host "Downloading MEGAcmd 64-bit from $downloadUrl ..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $outputPath

if (Test-Path $outputPath) {
    Write-Host "Download complete: $outputPath"
    Write-Host "You can now run the installer."
} else {
    Write-Host "Download failed."
}
