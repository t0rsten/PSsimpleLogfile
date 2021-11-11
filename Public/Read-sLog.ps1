function Read-sLog()
{
  <#
  .SYNOPSIS
    Reads data from a logfile.

  .DESCRIPTION
    The Read-sLog cmdlet reads data from a specific logfile. The logfile should be written using the 'Write-sLog' cmdlet.

  .PARAMETER Path
    Specifies the path to the logfile.

  .PARAMETER LogLevel
    Specifies the loglevel to read.

  .PARAMETER OnlyError
    Reads only records with loglevel Error.

  .PARAMETER OnlyWarning
    Reads only records with loglevel Waring.

  .PARAMETER OnlyInfo
    Reads only records with loglevel Info.

  .PARAMETER All
    Reads all records.

  .INPUTS
    None

  .OUTPUTS
    System.Management.Automation.PSCustomObject

  .EXAMPLE
    Read-sLog -Path .\logfile.log -LogLevel info,error
    Reads records with loglevel info and error.

  .EXAMPLE
    Read-sLog -Path .\logfile.log -OnlyError
    Reads records with loglevel error.

  .EXAMPLE
    Read-sLog -Path .\logfile.log
    Reads all records.

  .NOTES
    Author: Torsten Demmich

  .LINK
    https://github.com/t0rsten/PSsimpleLogfile

  #>
  [CmdletBinding(DefaultParameterSetName = 'Default')]
  Param(
    [Parameter(ParameterSetName = 'Default', Mandatory = $true, HelpMessage = 'Specify the path')]
    [Parameter(ParameterSetName = 'LogLevel', Mandatory = $true, HelpMessage = 'Specify the path')]
    [Parameter(ParameterSetName = 'OnlyError', Mandatory = $true, HelpMessage = 'Specify the path')]
    [Parameter(ParameterSetName = 'OnlyWarning', Mandatory = $true, HelpMessage = 'Specify the path')]
    [Parameter(ParameterSetName = 'OnlyInfo', Mandatory = $true, HelpMessage = 'Specify the path')]
    [ValidateScript({
      if(Test-Path -Path $_ -PathType Any)
      {
        $true
      }
      else
      {
        throw '{0} path not found.' -f $_
      }
    })]
    $Path,

    [Parameter(ParameterSetName = 'LogLevel', Mandatory=$false)]
    [array]$LogLevel,

    [Parameter(ParameterSetName = 'OnlyError', Mandatory=$false)]
    [Switch]$OnlyError,

    [Parameter(ParameterSetName = 'OnlyWarning', Mandatory=$false)]
    [Switch]$OnlyWarning,

    [Parameter(ParameterSetName = 'OnlyInfo', Mandatory=$false)]
    [Switch]$OnlyInfo,

    [Parameter(ParameterSetName = 'Default', Mandatory=$false)]
    [Switch]$All

    )

    begin
    {
      Write-Verbose -Message ('Read logfile {0}' -f $Path)
      $LogFileHeader = 'DateTime','LogLevel','Message'
      $Data = Import-Csv -Delimiter ';' -Header $LogFileHeader -Path $Path
      Write-Verbose -Message ('Logfile with {0} Messages' -f $Data.Count)
    }

    process
    {
      if (-not $LogLevel)
      {
        Switch ($PSBoundParameters.GetEnumerator().
        Where({$_.Value -eq $true}).Key){
          'OnlyError'   { $Result = $Data | Where-Object { $_.LogLevel -eq 'Error'} }
          'OnlyWarning' { $Result = $Data | Where-Object { $_.LogLevel -eq 'Warning'} }
          'OnlyInfo'    { $Result = $Data | Where-Object { $_.LogLevel -eq 'Info'} }
          Default       { $Result = $Data }
        }
      }
      else
      {
        $Result = $Data | Where-Object { $_.LogLevel -in $LogLevel }
      }

    }

    end
    {
      return $Result
    }

  }