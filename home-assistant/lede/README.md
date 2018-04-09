# MQTT Device Tracker for LEDE
Run device tracker on LEDE/Openwrt and report connected device to MQTT broker.

## Usage:
Put `myhistory.html` to `<Conf Dir>/panels/`.
Append the following to `configuration.yaml`

```yaml
panel_custom:
  - name: myhistory
    sidebar_title: My History
    url_path: myhistory
```
# MQTT Device Tracker for LEDE
Run device tracker on LEDE/Openwrt and report connected device to MQTT broker.

### License:

* Chart.js
* moment.js
* chartjs-chart-timeline