<p align="center">
<a href="https://github.com/t0rsten/PSsimpleLogfile"><img alt="GitHub top language" src="https://img.shields.io/github/languages/top/t0rsten/pssimplelogfile"></a>
<a href="https://www.powershellgallery.com/packages/PSsimpleLogfile/"><img alt="PowerShell Gallery" src="https://img.shields.io/powershellgallery/v/pssimplelogfile"></a>
<a href="https://github.com/t0rsten/PSsimpleLogfile/blob/master/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/t0rsten/pssimplelogfile"></a><br>
</p>


# PSsimpleLogfile
A Powershell Module to write and read simple Logfiles.

### Table of Contents
**[Functions](#functions)**<br>
**[Examples](#examples)**<br>
**[Documentation](#documentation)**<br>
**[Changelog](#changelog)**<br>


### Functions
| Name       | Description                                                                                                             |
| ---------- | ----------------------------------------------------------------------------------------------------------------------- |
| Write-sLog | The Write-sLog cmdLet write a new record to a logfile.<br> If the logfile does not exist, it will be created automatically. |
| Read-sLog  | The Read-sLog cmdLet read records from a logfile.                                                                       |

### Examples
Create a record in the logfile.
```Powershell
Write-sLog -Path C:\temp\logfile.log -Message 'Test' -LogLevel Error
```
Read records with loglevel _Error_
```powershell
Read-sLog -Path C:\temp\logfile.log -OnlyError
```

### Documentation
#### Write-sLog
```
NAME
    Write-sLog

SYNOPSIS
    Write a record


SYNTAX
    Write-sLog [-Path] <Object> [-Message] <String> [[-LogLevel] <String>] [<CommonParameters>]


DESCRIPTION
    The Write-sLog cmdLet write a new record to a logfile.
    If the logfile does not exist, it will be created automatically.


PARAMETERS
    -Path <Object>
        Specifies the path to the logfile.

        Required?                    true
        Position?                    1
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -Message <String>
        Specifies data associated with the record.

        Required?                    true
        Position?                    2
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -LogLevel <String>
        Specifies the loglevel. Posible values are Info, Warning and Error. Default is Info

        Required?                    false
        Position?                    3
        Default value                Info
        Accept pipeline input?       false
        Accept wildcard characters?  false

    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216).

INPUTS

OUTPUTS
    -------------------------- EXAMPLE 1 --------------------------

    PS C:\>Write-sLog -Path C:\temp\logfile.log -Message 'Test' -LogLevel Error

    Create a record in the logfile.
```
#### Read-sLog
```
NAME
    Read-sLog

SYNOPSIS
    Reads data from a logfile.


SYNTAX
    Read-sLog -Path <Object> [-All] [<CommonParameters>]

    Read-sLog -Path <Object> [-OnlyInfo] [<CommonParameters>]

    Read-sLog -Path <Object> [-OnlyWarning] [<CommonParameters>]

    Read-sLog -Path <Object> [-OnlyError] [<CommonParameters>]

    Read-sLog -Path <Object> [-LogLevel <Array>] [<CommonParameters>]


DESCRIPTION
    The Read-sLog cmdlet reads data from a specific log file. The log file must be written using the cmdlet Write-sLog.


PARAMETERS
    -Path <Object>
        Specifies the path to the logfile.

        Required?                    true
        Position?                    named
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -LogLevel <Array>
        Specifies the loglevel to read.

        Required?                    false
        Position?                    named
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -OnlyError [<SwitchParameter>]
        Reads only records with loglevel Error.

        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -OnlyWarning [<SwitchParameter>]
        Reads only records with loglevel Waring.

        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -OnlyInfo [<SwitchParameter>]
        Reads only records with loglevel Info.

        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -All [<SwitchParameter>]
        Reads all records.

        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false

    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216).

INPUTS

OUTPUTS

NOTES


        Version: 1.0.0
        Author: Torsten Demmich

        --- ChangeLog ---
        1.0.0 Initial Version

    -------------------------- EXAMPLE 1 --------------------------

    PS C:\>Read-sLog -Path C:\Temp\logfile.log -LogLevel info,error

    Reads records from loglevel info and error.




    -------------------------- EXAMPLE 2 --------------------------

    PS C:\>Read-sLog -Path C:\Temp\logfile.log -OnlyError

    Reads records from loglevel error.




    -------------------------- EXAMPLE 3 --------------------------

    PS C:\>Read-sLog -Path C:\Temp\logfile.log

    Reads all records.
```
### Changelog

- 1.0.0 - Initial Version
---
Made with :heart: and :coffee: