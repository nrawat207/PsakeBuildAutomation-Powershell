param($rootPath)

if (!$rootPath){
	$rootPath = resolve-path .\
}
& "$rootPath\MyProject.WindowsService.exe" install