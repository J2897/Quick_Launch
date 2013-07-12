:: Released under the GNU General Public License version 3 by J2897.

@echo OFF
cls
set QL=Quick Launch
if exist "%USERPROFILE%\%QL%" (goto :exists)

mklink /J "%USERPROFILE%\%QL%" "%APPDATA%\Microsoft\Internet Explorer\%QL%"
if exist "%USERPROFILE%\%QL%" (goto :created) else (goto :failed)
pause
exit /B 0

:created
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
echo And don't forget to 'Lock the taskbar'. Enjoy! :^)
echo.
pause
exit /B 0

:failed
echo Failed to create the Symbolic Link!
pause
exit /B 1

:exists
cls
echo There's already a %QL% folder in your profile folder:
echo %USERPROFILE%\%QL%
echo Please remove the %QL% folder before running this script again.
pause
exit /B 1
