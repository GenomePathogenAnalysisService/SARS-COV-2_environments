# SARS-COV-2_environments

Contains intstructions for building each environment from Dockerfiles or Singularity definitions.

[Pangolin](pango/)

[Nextclade](nextclade/)

[aln2type](aln2type/)

## Viridian workflow environment

For building docker and singularity containers to run software from (https://github.com/iqbal-lab-org/viridian_workflow)

```bash
git clone https://github.com/iqbal-lab-org/viridian_workflow
cd viridian_workflow
singularity build viridian_workflow.img Singularity.def
```

[OCI_object_HRR](OCI_object_HRR/)
