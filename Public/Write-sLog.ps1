function Write-sLog(){
  <#
  .SYNOPSIS
    Write a record

  .DESCRIPTION
    The Write-sLog cmdLet write a new record to a logfile.
    If the logfile does not exist, it will be created automatically.

  .PARAMETER Path
    Specifies the path to the logfile.

  .PARAMETER LogLevel
    Specifies the loglevel. Posible values are 'Info', 'Warning' and 'Error'. Default value is 'Info'.

  .PARAMETER Message
    Specifies data associated with the record.

  .EXAMPLE
    Write-sLog -Path .\logfile.log -Message 'Test' -LogLevel Error
    Create a record in the logfile.

  .NOTES
    Author: Torsten Demmich

  .LINK
    https://github.com/t0rsten/PSsimpleLogfile

  #>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$true,
    HelpMessage='Specify the path')]
    [ValidateScript({
      If(Test-Path -Path(Split-Path $_ -Parent) -PathType Container){
        $true }
      else {
        throw '{0} is not a valid Directory' -f (Split-Path $_ -Parent)
      }
    })]
    $Path,

    [Parameter(Mandatory=$true,
    HelpMessage='Specify the Message')]
    [ValidateNotNullOrEmpty()]
    [String]$Message,

    [Parameter(Mandatory=$false,
    HelpMessage='Specify the log level')]
    [ValidateNotNullOrEmpty()]
    [ValidateSet('Info','Warning','Error')]
    [string]$LogLevel = 'Info'

    )

    begin{}

    process{
      Add-Content -Path $Path -Value ('{0};{1};{2}' -f (Get-Date -Format FileDateTime).ToString(), $LogLevel, $Message)
    }

    end{}

  }