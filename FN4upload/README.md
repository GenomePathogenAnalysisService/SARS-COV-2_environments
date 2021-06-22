# Find neighbour 4 environment

For building docker and singularity containers to run software from [OCI](https://docs.oracle.com/en-us/iaas/tools/oci-cli/2.25.3/oci_cli_docs/cmdref/os/object/get.html), [biopython](http://biopython.org/DIST/docs/tutorial/Tutorial.html), [MAFFT](https://mafft.cbrc.jp/alignment/software/addsequences.html)


```bash
bash build.bash
```

This includes building the docker image.

```bash
sudo docker build -f Dockerfile -t fn4upload .
```

And converting to singularity

```bash
sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 fn4upload
```
