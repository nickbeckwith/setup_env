mkdir %HOMEPATH%\AppData\Roaming\gnupg
echo enable-putty-support◙enable-ssh-support > %HOMEPATH%\AppData\Roaming\gnupg\gpg-agent.conf
echo "If configured properly, card status should be shown below"
echo "---------------------------------------------------------"
gpg --card-status
echo "---------------------------------------------------------"
echo "If not configured properly, visit https://dev.to/dzerycz/the-ultimate-guide-to-yubikey-on-wsl2-part-1-5aed"
