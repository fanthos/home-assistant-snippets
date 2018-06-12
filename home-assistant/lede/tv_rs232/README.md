# MQTT to RS232 TV Remote Control for Sharp
Control Sharp TV using RS232 and MQTT server

## Usage:
Install `lua-rs232`, `lua-mosquitto` and `libmosquitto`(or `libmosquitto-nossl` if SSL not used):
```bash
opkg update
opkg install libmosquitto-nossl
opkg install lua-rs232
opkg install --nodeps lua-mosquitto
```
build and put tv-sharp.ipk to /tmp/, and then:
```bash
opkg install /tmp/tv-sharp.ipk
```
Edit `/etc/config/tv-sharp`:
```
config mqtt conf
        option server '192.168.101.24'
        option topic 'devices/tv'
        option user 'mqtt-user'
        option pwd 'mqtt-pwd'
```
Enable and restart service:
```bash
/etc/init.d/tv-sharp enable
/etc/init.d/tv-sharp restart
```

Configuration in Home Assistant:
MQTT state topic: `devices/tv`
MQTT switch topic: `devices/tv/set`


## License:

* BSD
