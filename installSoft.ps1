Invoke-WebRequest $ip
Param (

      [Parameter(Mandatory=$True,Position=0)]
      [string]$ip,

      [Parameter(Mandatory=$True,Position=1)]
      [string]$port
)
