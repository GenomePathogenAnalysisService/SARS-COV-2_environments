sudo rm  -r sing_images/

sudo docker build -f Dockerfile -t oci_download .

sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 oci_download
