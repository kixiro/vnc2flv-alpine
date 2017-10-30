# vnc2flv-alpine
"# vnc2flv-alpine" 

Build
=====

```
docker build -t save_video -f Dockerfile.multi .
```

Run
===

```
docker run -it -v $PWD/video:/root/save_video/ -e IP=<IP_VNC_SERVER> -e PORT=5900 save_video
```
