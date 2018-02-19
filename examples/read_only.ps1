	param ([bool]$write)

	if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 

	echo "Please run PowerShell as Administrator"
	pause }
	else {
		#echo "**********************************************************"
		$readonly = (-Not ($write))
	    $PARTITION=(get-location).Drive.Name
		get-disk -Number (Get-Partition -DriveLetter $PARTITION).disknumber | Set-Disk -IsReadOnly $readonly
		#echo "Read-Only Enabled: $readonly"
		#echo "**********************************************************"
	}