# openware
This repository contains all the ovenware images and documentation to

## Make

Type `make` for help.

`make up` to bring up services, `make init` to seed db and initialize vault.

Use `init` on first run or after reset:

```sh
make up init
```

If there are updates in the configs, better to start with a fresh state:

```sh
make reset init
```


## API

There are two main ports to interact with app:

  - `8001` - finex websocket api exposed. For testing enclave app with JWT auth.
  - `8000` - envoy gateway, for testing barong and signature auth/finex rest API.
    Barong is hosted under /api/v2/barong. Finex API is /api/v2/finex.


### 8001 root routes

  - /api/v2/barong -> barong REST endpoints
  - /api/v2/finex -> finex REST endpoints
  - /api/v2/finex -> finex websocket

### Connect to finex

Example with wscat:

```sh
➜  openware-images git:(master) ✗ wscat --connect "ws://localhost:8001/api/v2/ws" --header "Authorization: Bearer $(barong-jwt)"
Connected (press CTRL+C to quit)
< [4,"systemEvent",["authenticated","U487205863"]]
```

### Connect to barong

Example with curl:

```sh
➜  openware-images git:(master) ✗ curl localhost:8000/api/v2/barong/identity/time
{"time":1630495425,"time_ms":1630495425654}%
```

Also finex rest api:

```sh
➜  openware-images git:(master) ✗ curl localhost:8000/api/v2/finex/public/version
{"revision":"a3a1fa9a","version":"3.1.0-a3a1fa9"}
```
