. "$psscriptroot\..\lib\core.ps1"

$jsonenv = read_jsonenv
foreach ($var in $jsonenv.getEnumerator()) {
    $val = expand_path $var.value
    [environment]::setEnvironmentVariable($var.name, $val, 'process')
}
