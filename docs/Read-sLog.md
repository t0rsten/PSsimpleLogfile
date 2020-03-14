---
external help file: PSsimpleLogfile-help.xml
Module Name: pssimplelogfile
online version: https://github.com/t0rsten/PSsimpleLogfile
schema: 2.0.0
---

# Read-sLog

## SYNOPSIS
Reads data from a logfile.

## SYNTAX

### Default (Default)
```
Read-sLog -Path <Object> [-All] [<CommonParameters>]
```

### OnlyInfo
```
Read-sLog -Path <Object> [-OnlyInfo] [<CommonParameters>]
```

### OnlyWarning
```
Read-sLog -Path <Object> [-OnlyWarning] [<CommonParameters>]
```

### OnlyError
```
Read-sLog -Path <Object> [-OnlyError] [<CommonParameters>]
```

### LogLevel
```
Read-sLog -Path <Object> [-LogLevel <Array>] [<CommonParameters>]
```

## DESCRIPTION
The Read-sLog cmdlet reads data from a specific logfile.
The logfile should be written using the 'Write-sLog' cmdlet.

## EXAMPLES

### EXAMPLE 1
```
Read-sLog -Path .\logfile.log -LogLevel info,error
```

Reads records with loglevel info and error.

### EXAMPLE 2
```
Read-sLog -Path .\logfile.log -OnlyError
```

Reads records with loglevel error.

### EXAMPLE 3
```
Read-sLog -Path .\logfile.log
```

Reads all records.

## PARAMETERS

### -Path
Specifies the path to the logfile.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogLevel
Specifies the loglevel to read.

```yaml
Type: Array
Parameter Sets: LogLevel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyError
Reads only records with loglevel Error.

```yaml
Type: SwitchParameter
Parameter Sets: OnlyError
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyWarning
Reads only records with loglevel Waring.

```yaml
Type: SwitchParameter
Parameter Sets: OnlyWarning
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyInfo
Reads only records with loglevel Info.

```yaml
Type: SwitchParameter
Parameter Sets: OnlyInfo
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -All
Reads all records.

```yaml
Type: SwitchParameter
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Author: Torsten Demmich

## RELATED LINKS

[https://github.com/t0rsten/PSsimpleLogfile](https://github.com/t0rsten/PSsimpleLogfile)

