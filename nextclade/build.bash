sudo docker run  -v /var/run/docker.sock:/var/run/docker.sock  -v /home/nick/soft/nextclade/sing_images:/output  --privileged -t --rm  singularityware/docker2singularity nextstrain/nextclade

sudo singularity build /mnt/nanostore/soft/images/nextclade_$(date +%F_%T).simg docker:nextstrain/nextclade
