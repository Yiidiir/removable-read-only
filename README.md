# removable-read-only
A small script to automate toggling read-only mode independently of partiton letter or drive 'rank'.

##### Primary Idea
This was inspired by the fact that *most* malware cannot override ```read-only mode``` because of the high required administrative privileges unless the whole system is taken-down already.

**Disclaimer:** This script is provided "AS IS", without any warranties and should be used at your own risk.

![Example with output enabled](read-only-enabled.png)
## Getting Started

```cd``` to your removable drive
```
PS X:> cd X
```
```git clone``` this repository 

```
PS X:> git clone https://github.com/Yiidiir/removable-read-only.git
```

```cd``` to removable-read-only/examples

```
PS X:> cd removable-read-only/examples
```



## Usage
**PowerShell must have elevated privileges (Administrator)** *to access Set-disk -IsReadOnly*

```
PS X:> .\read_only.ps1
usage: .\read_only.ps1 [-write] (BOOLEAN)
```
Set removable drive to read-only mode
```
required argument:
  -write            Allow writing in drive (must be explicitly declared)
```

### Input

The only existing input is a boolean declaring whenever writing should be allowed or not:

```
PS X:> .\read_only.ps1 -write 0
```


### Output

By default there will be no output. 

```
PS X:\>
```

If you want to see a an output message, uncomment lines: 8,12,3 from ```read_only.ps1```

```
**********************************************************
Read-Only Enabled: True
**********************************************************
PS F:\>
```
### Credits
Useful resources i found while coding this:
* https://blogs.technet.microsoft.com/heyscriptingguy/2013/08/26/automating-diskpart-with-windows-powershell-part-1/
* https://ss64.com/ps/
* https://www.thomasmaurer.ch/2012/04/replace-diskpart-with-windows-powershell-basic-storage-cmdlets/
* https://stackoverflow.com/a/7195482/2073933
* [@Hamz-a](https://github.com/Hamz-a/) 's [README.md](https://github.com/Hamz-a/txt2bmp/blob/master/README.md) template from [txt2bmp](https://github.com/Hamz-a/txt2bmp)
### TODO:
* Auto-exit console
* Add Help parameter 
* Add Output parameter
* Support Linux
* Self-elevating permission in PowerShell 
* Doing this with ```diskpart``` only?

Licensed under the [MIT License](https://github.com/Yiidiir/removable-read-only/blob/master/LICENSE)
