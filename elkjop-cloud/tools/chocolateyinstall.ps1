
$ErrorActionPreference = 'Stop';


$packageName= 'elkjop-cloud'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cloud.elkjop.no/update/elkjop/current/setup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'Elkjøp Cloud*'
}

Install-ChocolateyPackage @packageArgs

















