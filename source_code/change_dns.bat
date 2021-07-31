netsh interface ip set dns name="以太网" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="以太网" addr=114.114.114.115 index=2
netsh interface ip set dns name="本地连接" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="本地连接" addr=114.114.114.115 index=2
netsh interface ip set dns name="WLAN" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="WLAN" addr=114.114.114.115 index=2
netsh interface ip set dns name="已太网" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="已太网" addr=114.114.114.115 index=2
netsh interface ip set dns name="乙太网" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="乙太网" addr=114.114.114.115 index=2
netsh interface ip set dns name="Wi-Fi" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="Wi-Fi" addr=114.114.114.115 index=2
for /f "tokens=3*" %%t in ('ipconfig ^/all ^| find "以太网适配器"') do set name3=%%t

if "%name3%"=="" ( 

 for /f "tokens=4*" %%a in ('netsh interface show interface^|more') do (set name=%%a)

) else (

 for /f "tokens=4*" %%a in ('netsh interface show interface^|more') do (set name=%%a %%b)
)
echo %name%
netsh interface ip set dns name=%name% source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name=%name% addr=114.114.114.115 index=2
pause
