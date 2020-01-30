Param(
   [Parameter(Position=1)]
   [string]$myVCenter,

   [Parameter(Position=2)]
   [string]$user,

   [Parameter(Position=3)]
   [string]$pass
)

$connection = Connect-VIServer "$myVCenter" -User $user -Password "$pass"

#Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false
Get-Template | Select Name | foreach { write-host $_.Name}