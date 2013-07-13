:: Released under the GNU General Public License version 3 by J2897.

@echo OFF
set QL=Quick Launch
if exist "%USERPROFILE%\%QL%" (goto :exists)

mklink /J "%USERPROFILE%\%QL%" "%APPDATA%\Microsoft\Internet Explorer\%QL%"
echo.
if not exist "%USERPROFILE%\%QL%" (goto :failed)
pause

cls
echo The %QL% Symbolic Link has been created.
echo.
echo To add it as a toolbar, right-click on your taskbar and go:
echo.
echo 	Toolbars ^> New toolbar...
echo.
echo Browse to, and select, the new %QL% Symbolic Link:
echo.
echo 	%USERPROFILE%\%QL%
echo.
echo Right-click on your taskbar and untick 'Lock the taskbar'.
echo.
echo Drag the new toolbar where you like.
echo.
echo Right-click the new toolbar and untick these two options:
echo.
echo 	Show Text
echo 	Show title
echo.
echo And don't forget to 'Lock the taskbar'.
echo.
pause
exit /B 0

:failed
echo Failed to create the Symbolic Link!
echo.
pause
exit /B 1

:exists
cls
echo There's already a %QL% folder in your profile folder:
echo.
echo 	%USERPROFILE%\%QL%
echo.
echo Please remove the %QL% folder before running this script again.
echo.
pause
exit /B 1
