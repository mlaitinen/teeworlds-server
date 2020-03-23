# teeworlds-server

Yet another Dockerized Teeworlds server. This one's based on the minimal Ubuntu image.

## Configuration

The configuration options are set using environment variables. The environment variable names should have an uppercase
prefix `TW_`, so for instances the configuration option `sv_name` should be defined as `TW_sv_name`.

See [teeworlds.com](https://www.teeworlds.com/?page=docs&wiki=server_settings) for all available configuration options.

## Run

Docker:

```
docker run -d -p 8303:8303/udp -e TW_sv_name=myserver mikula/teeworlds-server
```

Docker Compose:

```
docker-compose up -d
```
