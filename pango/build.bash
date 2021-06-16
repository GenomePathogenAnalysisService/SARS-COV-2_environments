sudo docker build --no-cache -f Dockerfile -t pangolinimg .
sudo docker run  -v /var/run/docker.sock:/var/run/docker.sock  -v /home/nick/soft/pangolin_sing/sing_images:/output  --privileged -t --rm  singularityware/docker2singularity pangolinimg
