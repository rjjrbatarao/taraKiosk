@echo off
setlocal enabledelayedexpansion

:: ==============================================
:: CONFIGURATION
:: ==============================================
:: %~dp0 uses the directory where this script lives
set "APK_FILENAME=app-release.apk"
set "APK_PATH=%~dp0%APK_FILENAME%"
set "PACKAGE_NAME=tara.kiosk.com"
set "RECEIVER_CLASS=tara.kiosk.com/.MyDeviceAdminReceiver"
:: ==============================================

echo --------------------------------------------
echo Target APK: %APK_PATH%
echo --------------------------------------------

:: Verify the APK actually exists in the current folder before running adb
if not exist "%APK_PATH%" (
    echo [ERROR] Could not find "%APK_FILENAME%" in this directory!
    echo Please ensure the batch file and APK are in the exact same folder.
    goto :end
)

echo.
echo --------------------------------------------
echo 1. Installing APK...
echo --------------------------------------------
adb.exe install -r -g "%APK_PATH%"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] APK installation failed! Aborting process.
    goto :end
)

echo.
echo --------------------------------------------
echo 2. Setting Device Owner... %RECEIVER_CLASS%
echo --------------------------------------------
adb.exe shell dpm set-device-owner %RECEIVER_CLASS%

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] APK installed and Device Owner set successfully!
) else (
    echo.
    echo [ERROR] Failed to set Device Owner.
)

:end
echo.
pause