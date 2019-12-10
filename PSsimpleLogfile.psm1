# Get public and private functions
$Public = @(Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue)
$Private = @(Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue)

# Load (dot sourcing) functions
foreach ($import in @($Public + $Private)){
  Try{ . $import.fullname }
  Catch{ Write-Error -Message 'Failed to load function {0}: {1}' -f $import.fullname, $_}
}

Export-ModuleMember -Function $Public.Basename