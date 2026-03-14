@echo off

set PROJSPACE=.
set WORKSPACE=.\Luban
set ASETSPACE=.\Project\Assets
set SASTSPACE=.\Project\Assets\StreamingAssets

set CONF_ROOT=%WORKSPACE%\_UnityTables
set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set OUTPUT_DIR=%PROJSPACE%\Output\Tables

echo =========================
echo Luban Compile Start
echo =========================
echo:

dotnet %LUBAN_DLL% ^
    -t all ^
    -d json ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=%OUTPUT_DIR%

echo:
echo =========================
echo Luban Compile Finished!
echo =========================

xcopy %OUTPUT_DIR%\* %SASTSPACE%\Tables\ /E /I /H /Y

echo:
echo =========================
echo Exported to StreamingAssets.
echo =========================
