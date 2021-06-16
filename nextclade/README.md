# nextclade environment

For building docker and singularity containers to run software from (https://github.com/nextstrain/nextclade)

```bash
bash build.bash
```

This includes fetching the docker image and building it.

```bash
sudo docker run  -v /var/run/docker.sock:/var/run/docker.sock \
	 -v /home/nick/soft/nextclade/sing_images:/output \
	 --privileged -t \
	--rm  singularityware/docker2singularity neherlab/nextclade
```
