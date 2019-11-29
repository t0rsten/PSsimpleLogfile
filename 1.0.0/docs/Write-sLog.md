# Write-sLog

```Powershell
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

NOTES


        Version: 1.0.0
        Author: Torsten Demmich

        --- ChangeLog ---
        1.0.0 Initial Version

    -------------------------- EXAMPLE 1 --------------------------

    PS C:\>Write-sLog -Path C:\temp\logfile.log -Message 'Test' -LogLevel Error

    Create a record in the logfile.





RELATED LINKS
    https://github.com/t0rsten/PSsimpleLogfile
```