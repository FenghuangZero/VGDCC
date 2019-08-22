:: The inital prototype will use the game Fallout 4 as installed by Steam as it's example and for testing purposes.


:: Variables  -  Currently these must be edited manually in the Batch file.
SET $CompanyName="Bethesda Game Studios"
SET $GameName="Fallout 4"
SET $altGameName="fallout4"

:: SET $DefaultAppDirectory="%ProgramFiles%\steam\steamapps\common\%$GameName%\
:: NB. This is assuming Steam has been installed on the system drive and no additional game libraries have been created in steam.
:: My own setup has steam installed on a separate drive, and the game installed on yet another drive as seen below.
:: Such setups may require additional work to identify the correct location
SET $DefaultAppDirectory="D:\Program Files(x86)\Steam\steamapps\common\%$GameName\"

SET $DefaultResourceDirectory="%$DefaultAppDirectory%\Data\"
SET $DefaultSaveDirectory="%USERPROFILE%\Documents\My Games\%$altGameName%\Saves"

SET $DefaultSysConfig1="%$DefaultAppDirectory\Fallout4_Default.ini"
SET $DefaultSysConfig2="%$DefaultAppDirectory\Ultra.ini"
SET $DefaultSysConfig3="%$DefaultAppDirectory\High.ini"
SET $DefaultSysConfig4="%$DefaultAppDirectory\Medium.ini"
SET $DefaultSysConfig5="%$DefaultAppDirectory\Low.ini"
SET $DefaultSysConfig6="%$DefaultAppDirectory\Fallout4\Fallout4Prefs.ini"

SET $DefaultUserConfig1="%USERPROFILE\Documents\My Games\%$altGameName%\Fallout4.ini"
SET $DefaultUserConfig2="%USERPROFILE\Documents\My Games\%$altGameName%\Fallout4Prefs.ini"
SET $DefaultUserConfig3="%USERPROFILE\Documents\My Games\%$altGameName%\Fallout4Custom.ini"
SET $DefaultUserConfig4="%LOCALAPPDATA%\DLCList.txt"
SET $DefaultUserConfig5="%LOCALAPPDATA%\plugins.txt"
SET $DefaultUserConfig6="%LOCALAPPDATA%\loadorder.txt"

SET $TargetAppDirectory="%ProgramFilesW6432%\%$CompanyName%\%GameName%\"
SET $TargetResourceDirectory="%PROGRAMDATA%\%$CompanyName%\%GameName%\"
SET $TargetSaveDirectory="%USERPROFILE%\Saved Games\%$CompanyName%\%$GameName%\"
SET $TargetConfigDirectory="%LOCALAPPDATA%\%$CompanyName%\%$GameName%\"

:: Functions

move %$DefaultAppDirectory% %$TargetAppDirectory%
move %$DefaultResource% %$TargetResourceDirectory%
move %$DefaultSaveDirectory% %$TargetSaveDirectory%

move %$DefaultSysConfig1 %$TargetResourceDirectory%
move %$DefaultSysConfig2 %$TargetResourceDirectory%
move %$DefaultSysConfig3 %$TargetResourceDirectory%
move %$DefaultSysConfig4 %$TargetResourceDirectory%
move %$DefaultSysConfig5 %$TargetResourceDirectory%
move %$DefaultSysConfig6 %$TargetResourceDirectory%

move %$DefaultUserConfig1 %$TargetConfigDirectory%
move %$DefaultUserConfig2 %$TargetConfigDirectory%
move %$DefaultUserConfig3 %$TargetConfigDirectory%
move %$DefaultUserConfig4 %$TargetConfigDirectory%
move %$DefaultUserConfig5 %$TargetConfigDirectory%
move %$DefaultUserConfig6 %$TargetConfigDirectory%

mklink /d %$DefaultAppDirectory% %$TargetAppDirectory%
mklink /d %$DefaultResource% %$TargetResourceDirectory%
mklink /d %$DefaultSaveDirectory% %$TargetSaveDirectory%

mklink /h %$DefaultSysConfig1% %$TargetResourceDirectory%\Fallout4_Default.ini
mklink /h %$DefaultSysConfig2% %$TargetResourceDirectory%\Ultra.ini
mklink /h %$DefaultSysConfig3% %$TargetResourceDirectory%\High.ini
mklink /h %$DefaultSysConfig4% %$TargetResourceDirectory%\Medium.ini
mklink /h %$DefaultSysConfig5% %$TargetResourceDirectory%\Low.ini
mklink /h %$DefaultSysConfig6% %$TargetResourceDirectory%\Fallout4\Fallout4Prefs.ini

mklink /h %$DefaultUserConfig1% %$TargetConfigDirectory%\Fallout4.ini
mklink /h %$DefaultUserConfig2% %$TargetConfigDirectory%\Fallout4Prefs.ini
mklink /h %$DefaultUserConfig3% %$TargetConfigDirectory%\Fallout4Custom.ini
mklink /h %$DefaultUserConfig4% %$TargetConfigDirectory%\DLCList.txt
mklink /h %$DefaultUserConfig4% %$TargetConfigDirectory%\plugins.txt
mklink /h %$DefaultUserConfig4% %$TargetConfigDirectory%\loadorder.txt
