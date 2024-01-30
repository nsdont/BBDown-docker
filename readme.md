# BBDown docker

docker image for https://github.com/nilaoda/BBDown

## Example

### run json server

```
touch BBDown.data
docker run -it --rm -v (realpath .)/download:/workspace -v (realpath .)/BBDown.data:/usr/bin/BBDown.data -p 23333:23333 feilongfl/bbdown serve
```

### download

```
docker run -it --rm -v (realpath .)/download:/workspace -v (realpath .)/BBDown.data:/usr/bin/BBDown.data -p 23333:23333 feilongfl/bbdown 'https://www.bilibili.com/xxxxxx'
```
