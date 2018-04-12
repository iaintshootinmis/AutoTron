#Setting Variables
$file="tron.exe"
echo "Setting location to $env:userprofile\Downloads\" 
Set-Location $env:userprofile\Downloads\
echo "Locating most recent Tron version from BMRF.org Repo"
$url="https://www.bmrf.org/repos/tron/"
$var=(((Invoke-WebRequest -uri $url).links.href | Sort-Object -Descending)[1])
echo "Most recent version in Repo: "
echo $url$var
echo "Downloading $var"
#Invoke-WebRequest -uri $url$var -OutFile $file
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
 