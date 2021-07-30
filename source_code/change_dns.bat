netsh interface ip set dns name="以太网" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="以太网" addr=114.114.114.115 index=2
netsh interface ip set dns name="本地连接" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="本地连接" addr=114.114.114.115 index=2
netsh interface ip set dns name="WLAN" source=static addr=114.114.114.114 register=PRIMARY
netsh interface ip add dns name="WLAN" addr=114.114.114.115 index=2
