param($rootPath)

if (!$rootPath){
	$rootPath = resolve-path .\
}
& "$rootPath\MyProject.WindowsService.Exe" /uninstall /serviceName:"MyProject.WindowsService"