# OtelExportDemo

```bash
mix deps.get

MIX_ENV=local iex -S mix

iex|1 ▶ OtelExportDemo.hello
:world

# --------- OR -------------

cat .env_template > .env

# Set the value of HONEYCOMB_KEY in .env with your key from https://ui.honeycomb.io/account

source .env && MIX_ENV=honey iex -S mix

iex|1 ▶ OtelExportDemo.hello
:world
```
