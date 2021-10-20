sudo docker build --no-cache -f Dockerfile -t bcftoolsimg .
sudo docker run  -v /var/run/docker.sock:/var/run/docker.sock  -v $PWD:/output  --privileged -t --rm  singularityware/docker2singularity bcftoolsimg
