# helloworld example

This example load data from efs, require gpu resource, parallel run training with different parameter, save trainned model in the efs. 

Before using these command, specify your data_efs address in the batch.json. For example, my data_efs is /mnt/data_efs/qinjie.

```
Change DATA_EFS var in the batch.json
ems batch submit batch.json
ems batch overview
ems batch status mnist.batch
ems batch status mnist.batch job0
ems batch status mnist.batch job1
ems batch status mnist.batch job2
```

```
ems batch cancel mnist.batch
```