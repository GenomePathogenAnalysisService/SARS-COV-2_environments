# OCI object store and Human read removal environment

For building docker and singularity containers to run software from [OCI](https://docs.oracle.com/en-us/iaas/tools/oci-cli/2.25.3/oci_cli_docs/cmdref/os/object/get.html), [Kraken2](https://github.com/DerrickWood/kraken2), [SeqTK](https://github.com/lh3/seqtk)

```bash
bash build.bash
```

This includes building the docker image.

```bash
sudo docker build -f Dockerfile -t oci_download .
```

And converting to singularity

```bash
sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 oci_download
```
