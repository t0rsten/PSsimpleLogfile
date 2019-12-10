# Read-sLog
```Powershell
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
    The Read-sLog cmdlet reads data from a specific log file. The log file should be written using the cmdlet
    Write-sLog.


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

    Reads records with loglevel info and error.




    -------------------------- EXAMPLE 2 --------------------------

    PS C:\>Read-sLog -Path C:\Temp\logfile.log -OnlyError

    Reads records with loglevel error.




    -------------------------- EXAMPLE 3 --------------------------

    PS C:\>Read-sLog -Path C:\Temp\logfile.log

    Reads all records.





RELATED LINKS
    https://github.com/t0rsten/PSsimpleLogfile

```