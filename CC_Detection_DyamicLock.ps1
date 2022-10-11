#Determine the current state of EnableGoodby (Dynamic Lock)
    $Registry = Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\" -Name EnableGoodbye
    $Value = "1"

    If ($Registry -eq $Value){
    $Value = "1"
    } 
    else
    {
    $Value = "0"
    }

$hash = @{ EnableGoodbye = $value}
return $hash | ConvertTo-Json -Compress