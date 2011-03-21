param($installPath, $toolsPath, $package, $project)

$file = "C:\nuget.variables.init.ps1.log"
write-host ===================================================
write-host init.ps1
write-host ===================================================
'===================================================' | out-file $file
'init.ps1' | out-file $file -append 
'===================================================' | out-file $file -append 

write-host '$installPath' variable = $installPath
'$installPath'  | out-file $file -append 
'=============='  | out-file $file -append 
$installPath | format-list | out-file $file -append
'=============='  | out-file $file -append 

write-host '$toolsPath' variable = $toolsPath
'$toolsPath'  | out-file $file -append 
'=============='  | out-file $file -append 
$toolsPath | format-list | out-file $file -append
'=============='  | out-file $file -append 

write-host '$package' variable = $package
'$package'  | out-file $file -append 
'=============='  | out-file $file -append 
$package | format-list | out-file $file -append
'=============='  | out-file $file -append 

write-host '$project' variable = $project
write-host Project is always null in init.ps1
'$project'  | out-file $file -append 
'=============='  | out-file $file -append 
'always null in init.ps1'  | out-file $file -append 
#$project | format-list | out-file $file -append 
'=============='  | out-file $file -append 

write-host Writing output to $file
write-host ===================================================