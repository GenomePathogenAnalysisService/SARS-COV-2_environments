sudo rm  -r sing_images/

sudo docker build -f Dockerfile -t aln2type .

sudo docker run \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $PWD/sing_images:/output \
 --privileged -t --rm \
 singularityware/docker2singularity \
 aln2type 
