mkdir %HOMEPATH%\AppData\Roaming\gnupg
"enable-putty-support" | Out-File -Encoding ascii $ENV:APPDATA\gnupg\gpg-agent.conf
echo "If configured properly, card status should be shown below"
echo "---------------------------------------------------------"
gpg --card-status
if ($LASTEXITCODE -ne "0") {
  echo "GnuPG is not configured properly. Visit https://dev.to/dzerycz/the-ultimate-guide-to-yubikey-on-wsl2-part-1-5aed"
  exit 1
}
