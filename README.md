# Build
```bash
export K8S_VERSION=1.14.7
docker build -t suneetamall/pykubectl:$K8S_VERSION --build-arg K8S_VERSION=$K8S_VERSION .
docker push suneetamall/pykubectl:$K8S_VERSION
```
