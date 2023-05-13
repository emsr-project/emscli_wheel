# install 

  ems installation guide:

  ```
  pip install https://github.com/emsr-project/emscli_wheel/releases/download/v0.1.2/ems_batch_utility-0.1.2-py3-none-any.whl
  ems set --kubeconfig <kubeconfig_path> --dataEFS <data_efs_path> --codeEFS <code_efs_path> --gluster <gluster_path>
  ```

### Usage:
  
  ```
  ems set --kubeconfig <kubeconfig_path> --dataEFS <data_efs_path> --codeEFS <code_efs_path> --gluster <gluster_path>
  ```

### Options

  **--kubeconfig <kubeconfig_path>**

  Specify the path to the Kubernetes configuration file. This file contains the necessary information to connect to your Kubernetes cluster.

  **--dataEFS <data_efs_path>**

  Set the path to the Elastic File System (EFS) directory where data will be stored. This path will be used for storing data when working with the EMS tool.

  **--codeEFS <code_efs_path>**

  Set the path to the Elastic File System (EFS) directory where code will be stored. This path will be used for storing code when working with the EMS tool.

  **--gluster <gluster_path>**

  Set the path to the GlusterFS directory. GlusterFS is a scalable, distributed file system that can be used for various storage purposes.

### Example
  
  ```
  ems set --kubeconfig /home/ubuntu/.mkube/mkube/config/config --dataEFS /home/ubuntu/mnt_magics/data_ws --codeEFS /home/ubuntu/mnt_magics/code_ws --gluster /home/ubuntu/mnt_magics
  ```