If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
[Security.Principal.WindowsBuiltInRole] "Administrator"))
{
Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
Break
}
#Setting Variables
$file="tron.exe"
echo "Setting location to $env:userprofile\Downloads\" 
Set-Location $env:userprofile\Downloads\
echo "Locating most recent Tron version from BMRF.org Repo"
$url="https://www.bmrf.org/repos/tron/"
#This sets $var to the equivalent of running curl and grepping for "Tron.exe"
$var=(((Invoke-WebRequest -uri $url).links.href | Sort-Object -Descending)[1])
echo "Most recent version in Repo: "
echo $url$var
echo "Downloading $var"
#Downloads the version of Tron found in ln8.
Invoke-WebRequest -uri $url$var -OutFile $file
echo "Download Complete" 
echo "Moving $file to $env:userprofile\Desktop\"
move-item -path .\$file -Destination $env:userprofile\Desktop\
Set-Location $env:userprofile\Desktop\
"Extracting $file to $env:userprofile\Desktop\"
.\tron.exe
"$file extracted to $env:userprofile\Desktop\$file"
echo "Copying Tron Files to Desktop"
Move-Item -path .\tron\*.bat -Destination $env:userprofile\Desktop\
Move-item -path .\tron\resources -Destination $env:userprofile\Desktop\
#Launches Tron in unattended mode and uploads Logs to Vocatus by default.
.\tron.bat -asm -udl 
