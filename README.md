Google USB Driver
==============

* * * * *

The Google USB Driver is **required for Windows only** in order to
perform [adb][] debugging with any of the **Síragon Android devices**.

Windows drivers for all other devices are provided by the respective
hardware manufacturer, as listed in the [OEM USB Drivers][] document.

**Note:** If you're developing on Mac OS X or Linux, then you **do not**
need to install a USB driver. To start developing with your device, read
[Using Hardware Devices][].

Downloading the Google USB Driver
---------------------------------

The Google USB Driver for Windows is available for download as an
optional SDK component. You need the driver only if you are developing
on Windows and want to connect a Google Android-powered device (such as
a TB-9000 or SP-5000) to your development environment over USB.


**Figure 1.** The SDK Manager with the Google USB Driver selected.

You can download the Google USB Driver for Windows in one of two ways:

-   [Click here to download the latest Google USB Driver ZIP file][].
-   Or, use the Android SDK Manager tool that is included with the
    [Android SDK][]. Using the SDK Manager helps you keep the driver up
    to date by notifying you when your current driver is out of date.
    1.  Launch the Android SDK Manager by double-clicking
        `SDK Manager.exe`, at the root of your SDK directory.
    2.  Expand *Extras*.
    3.  Check **Google USB Driver package** and click **Install**.
    4.  Proceed to install the package. When done, the driver files are
        downloaded into the `<sdk>\extras\google\usb_driver\` directory.

For installation information, read [Installing a USB Driver][].

Logging Installation Information and Error Messages
--------------

DPInst logs high-level installation information and error messages in a log file (%SystemRoot%\DPINST.LOG).<br />
The DPInst log file is a plain-text file that you can use to troubleshoot DPInst driver installation.

---
*Android Developers Tools <br />
Avaliable from: http://developer.android.com/sdk/win-usb.html#WinUsbDriver <br />
Under: http://creativecommons.org/licenses/by/2.5/*

*Windows - Dev Center - Hardware. <br />
Available from <http://msdn.microsoft.com/en-us/library/windows/hardware/ff548674%28v=vs.85%29.aspx><br />
Under: <http://msdn.microsoft.com/en-US/windows/apps/cc300389>*

  [adb]: /tools/help/adb.html
  [Samsung]: http://www.samsung.com/us/support/downloads/verizon-wireless/SCH-I515MSAVZW
  [OEM USB Drivers]: http://developer.android.com/tools/extras/oem-usb.html
  [Using Hardware Devices]: http://developer.android.com/guide/developing/device.html
  [Click here to download the latest Google USB Driver ZIP file]: http://developer.android.com/sdk/win-usb.html#download
  [Android SDK]: http://developer.android.com/sdk/index.html
  [Installing a USB Driver]: http://developer.android.com/sdk/tools/extras/oem-usb.html#InstallingDriver