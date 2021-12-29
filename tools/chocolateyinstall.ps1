$url = 'https://github.com/toitlang/toit/releases/download/v0.11.1/toit-windows.tar.gz'

$packageArgs = @{ 
    packageName = 'Toit'
    unzipLocation = $toolDir
    fileType = 'EXE'
    url = $url

    softwareName = 'Toit'
}

Get-ChocolateyWebFile $packageName -FileFullPath "\toit.exe" $url
