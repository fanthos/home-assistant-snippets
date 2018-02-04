# History panel using Chart.js.
Instead of Google Charts.

## Usage:

Put `myhistory.html` to <Conf Dir>/panels/.
Append the following to `configuration.yaml`

```yaml
panel_custom:
  - name: myhistory
    sidebar_title: My History
    url_path: myhistory
```