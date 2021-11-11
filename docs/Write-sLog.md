---
external help file: PSsimpleLogfile-help.xml
Module Name: PSsimpleLogfile
online version: https://github.com/t0rsten/PSsimpleLogfile
schema: 2.0.0
---

# Write-sLog

## SYNOPSIS
Write a record

## SYNTAX

```
Write-sLog [-Path] <Object> [-Message] <String> [[-LogLevel] <String>] [<CommonParameters>]
```

## DESCRIPTION
The Write-sLog cmdLet write a new record to a logfile.
If the logfile does not exist, it will be created automatically.

## EXAMPLES

### EXAMPLE 1
```
Write-sLog -Path .\logfile.log -Message 'Test' -LogLevel Error
```

Create a record in the logfile.

## PARAMETERS

### -Path
Specifies the path to the logfile.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
Specifies data associated with the record.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogLevel
Specifies the loglevel.
Posible values are 'Info', 'Warning' and 'Error'.
Default value is 'Info'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: Info
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.String
## NOTES
Author: Torsten Demmich

## RELATED LINKS

[https://github.com/t0rsten/PSsimpleLogfile](https://github.com/t0rsten/PSsimpleLogfile)

