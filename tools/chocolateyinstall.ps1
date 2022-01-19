# Copyright: GNU GPL v3.0
# Date: 26.10.2021 - 20.01.2022
# Author: Toitware ApS <xxx@toit.io>

$ErrorActionPreferense = 'Stop';

$toolDir = "$(Split-Path -parent)"
$url = 'https://github.com/toitlang/toit/releases/download/v0.15.0/toit-windows.tar.gz'

$packageArgs = @{ 
	packageName = 'Toit'
	unzipLocation = $toolDir
	fileType = 'EXE'
	url = $url
	fileFullPath = Join-Path $toolsDir 'toit.exe'

	softwareName = 'Toit'
}

Get-ChocolateyWebFile $packageName -FileFullPath "\toit.exe" $url
