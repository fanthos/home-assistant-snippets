# MQTT Device Tracker for LEDE
Run device tracker on LEDE/Openwrt and report connected device to MQTT broker.

## Usage:
Install `lua-mosquitto` and `libmosquitto`(or `libmosquitto-nossl` if SSL not used):
```bash
opkg update
opkg install libmosquitto-nossl
opkg install --nodeps lua-mosquitto
```
build and put mqtt-tracker.ipk to /tmp/, and then:
```bash
opkg install /tmp/mqtt-tracker.ipk
```
Edit `/etc/config/mqtt-tracker`:
```
config mqtt conf
        option server '192.168.101.24'
        option prefix 'tracker/dev1/'
        option user 'mqtt-user'
        option pwd 'mqtt-pwd'
```
Enable and restart service:
```bash
/etc/init.d/mqtt-tracker enable
/etc/init.d/mqtt-tracker restart
```

Configuration in Home Assistant:
```yaml
device_tracker:
  - platform: mqtt
    devices:
      my_phone: 'tracker/+/02:02:02:02:02:02'
```
# MQTT Device Tracker for LEDE
将连接到 LEDE/Openwrt 的无线设备信息发送到MQTT服务器上。

## Usage:
安装 `lua-mosquitto` 和 `libmosquitto` （如没有使用SSL，建议安装 `libmosquitto-nossl`）：
```shell
opkg update
opkg install libmosquitto-nossl
opkg install --nodeps lua-mosquitto
```
将 mqtt-tracker.ipk 放在 /tmp/ 内，然后运行：
```shell
opkg install /tmp/mqtt-tracker.ipk
```
修改 `/etc/config/mqtt-tracker`：
```
config mqtt conf
        option server '192.168.101.24'
        option prefix 'tracker/dev1/'
        option user 'mqtt-user'
        option pwd 'mqtt-pwd'
```
启用并重新启动服务：
```shell
/etc/init.d/mqtt-tracker enable
/etc/init.d/mqtt-tracker restart
```

在 Home Assistant 中，需要使用MQTT设备跟踪，示例配置如下：
```yaml
device_tracker:
  - platform: mqtt
    devices:
      my_phone: 'tracker/+/02:02:02:02:02:02'
```
## License:

* BSD
