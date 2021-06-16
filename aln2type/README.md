# aln2type environment

For building docker and singularity containers to run software from (https://github.com/connor-lab/aln2type)

```bash
bash build.bash
```

This includes building the docker image.

```bash
sudo docker build -f Dockerfile -t aln2type .
```

And converting to singularity

```bash
sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 aln2type 
```
