## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-php/blob/master/Dockerfile">latest (8.0)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-php/issues">https://github.com/ngacareer/alpine-php/issues</a>

## What is alpine-php ? 

Linux lightweight, PHP environment.

## How to use this image
- On Docker 
```
docker run -itd --name alpine-php ngacareer/alpine-php
docker exec -it alpine-php sh
# php --version
 ```
- On Kubernetes
 ```
kubectl run alpine-php --image=ngacareer/alpine-php
kubectl exec -it alpine-php sh
# php --version
 ```
- On OpenShift
 ```
oc run alpine-php --image=ngacareer/alpine-php
oc exec alpine-php  -i -t sh
# php --version
 ```
## License

Copyright © 2021 Ngacareer

All contents licensed under the [MIT License](LICENSE)
