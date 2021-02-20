# OtelExportDemo

```bash
mix deps.get

cat .env_template > .env

# Set the value of HONEYCOMB_KEY in .env with your key from https://ui.honeycomb.io/account

source .env && iex -S mix

iex|1 ▶ OtelExportDemo.hello
:world
```