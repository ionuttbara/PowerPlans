pushd "%CD%"
CD /D "%~dp0"
xcopy "BatteryMode64.exe" "C:\Program Files\Battery Mode" /y /h /e /c /i
regedit /s "battery.reg"
powercfg -import "%~dp0\Balanced Power Plan.pow"
powercfg -import "%~dp0\Performance.pow"
powercfg -import "%~dp0\High Performance.pow"
powercfg -import "%~dp0\Battery Economy.pow"
powercfg -import "%~dp0\Silent Performance.pow"
exit