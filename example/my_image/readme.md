## Build your own conda environment for ems 


### Step1.

Go to [docker tempplate](../../docker) on this repo and edit your image on the [dockerfile](../../docker/dockerfile)'s line 35-38.

Change the docker name in the [build_docker.sh](../../docker/build_docker.sh)

```
sh build_docker.sh
docker login
docker push {image_name}
```


### Step2.

change `conda_env` and `container_image` in batch.json

```
ems batch submit batch.json
ems batch overview
ems batch status image.batch
ems batch status image.batch job0
```
