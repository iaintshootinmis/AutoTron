# AutoTron
## Synopsis
This Powershell script downloads Vocatus' popular [TronScript](https://www.reddit.com/r/tronscript) and runs with basic options and log uploading. 

## Description
This Powershell script uses the `Invoke-WebRequest` method to locate the current Tron.exe file located on BMRF.org and downloads, extracts, and runs the [TronScript](https://www.reddit.com/r/tronscript) in unattended safe mode with networking and log uploading. All of this is editable prior to run. This script in no way supplants or intends to replace the original [TronScript](https://www.reddit.com/r/tronscript) function, but instead allows the individual to carry a several kb script that will always attain the most recent version of the [TronScript](https://www.reddit.com/r/tronscript). 

## Reasoning
For the last several years Vocatus' [TronScript](https://www.reddit.com/r/tronscript) has saved innumerable hours of troubleshooting, cleaning, and repair time. The only thing that I ever had trouble with was locating the newest version of the program. While TronScript sought to fix this with the auto-update feature, I found it easier to write a powershell script that could be used to always pull the most recent version. It is much lighter weight than carrying the full 1gb TronScript resource and waiting on it to update itself.

The AutoTron can also be loaded into a [Rubber Ducky](https://hakshop.com/collections/usb-rubber-ducky/products/usb-rubber-ducky-deluxe) via the included [inject.bin](https://github.com/justinamcafee/AutoTron/inject.bin) to fully automate the Tron download, extraction, and install by simply plugging in the USB Rubber Ducky. 


## Credit Where Credits Due
Thanks to Vocatus for his awesome example of applied Chrisitianity and OpenSource values. 
> "Do not withhold good from those to whom it is due, when it is in your power to act." - Proverbs 3:27

Thanks to Carlton Sliger for his infinite Powershell knowledge. 

Thanks to the Reddit Community [TronScript](https://www.reddit.com/r/tronscript) who keeps the TronScript as an invaluable tool in the working mans kit. 
