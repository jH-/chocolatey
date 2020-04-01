$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$hash		= '65C08A398198978B66E0B40C6298684C5BC38229952ED0839A5D446B6A133613'

$packageArgs = @{
  packageName   = 'elkjop-cloud'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://cloud.elkjop.no/update/elkjop/current/setup.exe'
  checksum      = $hash
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'Elkjøp Cloud*'
}

Install-ChocolateyPackage @packageArgs
