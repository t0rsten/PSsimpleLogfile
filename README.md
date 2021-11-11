<p align="center">
<a href="https://github.com/t0rsten/PSsimpleLogfile"><img alt="GitHub top language" src="https://img.shields.io/github/languages/top/t0rsten/pssimplelogfile"></a>
<a href="https://www.powershellgallery.com/packages/PSsimpleLogfile/"><img alt="PowerShell Gallery" src="https://img.shields.io/powershellgallery/v/pssimplelogfile"></a>
<a href="https://github.com/t0rsten/PSsimpleLogfile/blob/master/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/t0rsten/pssimplelogfile"></a>
<a href="https://www.powershellgallery.com/packages/PSsimpleLogfile/"><img alt="PowerShell Gallery" src="https://img.shields.io/powershellgallery/p/pssimplelogfile?color=blue"></a><br>
</p>


# PSsimpleLogfile
A Powershell Module to write and read simple Logfiles.

### Table of Contents
**[Functions](#functions)**<br>
**[Installation](#installation)**<br>
**[Examples](#examples-of-usage)**<br>
**[Documentation](#documentation)**<br>
**[Changelog](#changelog)**<br>


### Functions
| Name       | Description                                                                                                                 |
| ---------- | --------------------------------------------------------------------------------------------------------------------------- |
| Write-sLog | The Write-sLog cmdLet write a new record to a logfile.<br> If the logfile does not exist, it will be created automatically. |
| Read-sLog  | The Read-sLog cmdLet read records from a logfile.                                                                           |

### Installation
Install from Powershell Gallery

```Powershell
Install-Module -Name PSsimpleLogfile
```

### Examples of usage
Create a record in the logfile.
```Powershell
Write-sLog -Path C:\temp\logfile.log -Message 'Test' -LogLevel Error
```
Read records with loglevel _Error_
```powershell
Read-sLog -Path C:\temp\logfile.log -OnlyError
```
Create a logfile with random records
```Powershell
Import-Module PSsimpleLogfile

for ($i=1; $i -le 10; $i++) {
  
  Write-sLog -Path C:\Scripts\logfile.log -LogLevel ('Info','Error','Warning' | Get-Random -Count 1) -Message ('Message {0}' -f $i)

}
```
Read all records from file
```Powershell
PS > Read-sLog -Path C:\Scripts\logfile.log

DateTime            LogLevel Message   
--------            -------- -------   
20191129T2019067499 Error    Message 1 
20191129T2019067539 Error    Message 2 
20191129T2019067595 Warning  Message 3 
20191129T2019067665 Warning  Message 4 
20191129T2019067705 Error    Message 5 
20191129T2019067745 Warning  Message 6 
20191129T2019067775 Info     Message 7 
20191129T2019067815 Error    Message 8 
20191129T2019067855 Error    Message 9 
20191129T2019067905 Info     Message 10
```

Read all records with loglevel _error_ and _warning_
```Powershell
PS > Read-sLog -Path C:\Scripts\logfile.log -LogLevel error,warning

DateTime            LogLevel Message  
--------            -------- -------  
20191129T2019067499 Error    Message 1
20191129T2019067539 Error    Message 2
20191129T2019067595 Warning  Message 3
20191129T2019067665 Warning  Message 4
20191129T2019067705 Error    Message 5
20191129T2019067745 Warning  Message 6
20191129T2019067815 Error    Message 8
20191129T2019067855 Error    Message 9
```

Read all records with loglevel _info_
```Powershell
PS > Read-sLog -Path C:\Scripts\logfile.log -OnlyInfo

DateTime            LogLevel Message   
--------            -------- -------   
20191129T2019067775 Info     Message 7 
20191129T2019067905 Info     Message 10
```

### Documentation
[Write-sLog](docs/Write-sLog.md)<br>
[Read-sLog](docs/Read-sLog.md)

### Changelog
#### Version 1.0.4
- code improvements
- Updated ```Read-sLog``` comment based help
- Updated ```Write-sLog``` comment based help
#### Version 1.0.3
- Fixed bug in ```Write-sLog``` that no file is created when using a PsDrive ([Issue #3](https://github.com/t0rsten/PSsimpleLogfile/issues/3))
#### Version 1.0.2
- Removed help messages for some parameters in ```Read-sLog```
- Updated ```docs/Read-sLog.md``` and ```docs/Write-sLog.md```
- Updated ```README.md```

#### Version 1.0.1
- Updated ```Read-sLog``` comment based help
- Removed trailing withspaces in ```Read-sLog```
- Updated ```Write-sLog``` comment based help
- Removed trailing withspaces in ```Write-sLog```

#### Version 1.0.0
- Initial Version
---
Made with :heart: and :coffee: