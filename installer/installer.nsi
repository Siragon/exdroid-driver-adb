;  Síragon AOSU is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.
;  
;  Síragon AOSU is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;  GNU General Public License for more details.
;  
;  You should have received a copy of the GNU General Public License
;  along with Síragon AOSU. If not, see <http://www.gnu.org/licenses/>. 

!addplugindir "plugins"
!include "x64.nsh"
Name "Controladores para depurador ADB - TB-7000"
OutFile "TB-7000_ADB.exe"
AutoCloseWindow True
InstallDir "$PROGRAMFILES32\Síragon\drivers\TB-7000\adb"
Icon "../images/installer.ico"
UninstallIcon "../images/installer.ico"
RequestExecutionLevel admin

!define LANG_SPANISH     "8202"
!define LANG_ENGLISH     "1033"
VIProductVersion "1.0.0.0"
VIAddVersionKey /LANG=${LANG_SPANISH} "ProductName" "Controladores para depurador ADB - TB-7000"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "ADB debugger Drivers - TB-7000"
VIAddVersionKey /LANG=${LANG_SPANISH} "Comments" "These drivers are part of the Software Development Kit for Android."
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "Estos controladores son parte del Kit de Desarrollo de Software de Android."
VIAddVersionKey /LANG=${LANG_SPANISH} "CompanyName" "Síragon"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "Síragon"
VIAddVersionKey /LANG=${LANG_SPANISH} "LegalCopyright" "GPL v3"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "GPL v3"
VIAddVersionKey /LANG=${LANG_SPANISH} "FileDescription" "Instalador de controladores para la TB-7000"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "Driver installer for the TB-7000"
VIAddVersionKey /LANG=${LANG_SPANISH} "FileVersion" "1.0"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "1.0"
VIAddVersionKey /LANG=${LANG_SPANISH} "ProductVersion" "Release"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "Release"
VIAddVersionKey /LANG=${LANG_SPANISH} "InternalName" "TB-7000_ADB"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "Síragon® is a Trademark of Greentech de Venezuela c.a."
VIAddVersionKey /LANG=${LANG_SPANISH} "LegalTrademarks" "Síragon® es una Marca Registrada de Greentech de Venezuela c.a."
VIAddVersionKey /LANG=${LANG_SPANISH} "OriginalFilename" "TB-7000_ADB.exe"

Function .onInit
  SetSilent silent
FunctionEnd

Section "Controladores para depurador ADB - TB-7000" XULAppSection
  SetOutPath "$INSTDIR"
  call copyFilesToInstallDir
SectionEnd

Function copyFilesToInstallDir
	SetOutPath "$PROGRAMFILES32\Síragon\drivers\TB-7000\adb"
	File "TB-7000_ADB.7z"
	Nsis7z::Extract "TB-7000_ADB.7z"
	StrCpy $OUTDIR "$PROGRAMFILES32\Síragon\drivers\TB-7000\adb"
	SetOutPath "$PROGRAMFILES32\Síragon\drivers\TB-7000\adb"
	
	${If} ${RunningX64}
	   Exec '"$PROGRAMFILES32\Síragon\drivers\TB-7000\adb\dpinst_x64.exe"'
	${Else}
	   Exec '"$PROGRAMFILES32\Síragon\drivers\TB-7000\adb\dpinst_x86.exe"'
	${EndIf}
	Delete "$PROGRAMFILES32\Síragon\drivers\TB-7000\adb\TB-7000_ADB.7z"
	AllowSkipFiles off
FunctionEnd