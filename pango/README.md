# Pango environment

For building docker and singularity containers to run software from (https://github.com/cov-lineages/pangolin)

```bash
bash build.bash
```

This includes building the docker image.

```bash
sudo docker build -f Dockerfile -t pangolinimg .
```

And converting to singularity

```bash
sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 pangolinimg 
```
