# EMS Config JSON Schema

The EMS Config JSON file contains the necessary configurations for running batch jobs. The JSON file must follow the specified schema to ensure correct job execution. Below is the documentation for the schema properties.

Minimal Example: 

```json
{
  "name": "helloword",
  "code_folder": "/home/ubuntu/",
  "job_specs":[
  {
    "command": "python test.py",
  }
]
}
```

Another example, containing resource requirement: 

```json
{
  "name": "run",
  "code_folder": "/home/ubuntu/",
  "ignore_globs": ["*.pyc", "*.ipynb", "*.swp", "*__pycache__*", ".mypy_cache", "*.egg-info", "build", "dist"],
  "shared": {
    "vcpus": 15,
    "memory_in_gb": 5,
    "gpu_type": "A100",
    "gpus": 0,
    "env_vars":{
      "HELLO": 1,
      "WORELD": 2
    }
  },
  "job_specs":[
  {
    "command": "python test1.py",
    "notes": "run test1"
  },
  {
    "command": "python test2.py",
    "notes": "run test2"
  },
  {
    "command": "python test3.py",
    "notes": "run test3"
  },
  {
    "command": "python test4.py",
    "notes": "run test4"
  }
]
}
```

## Schema Properties

  **`code_folder`**

  - Type: string
  
  - Description: Path to the code folder containing the necessary files for the jobs.


  **`ignore_globs`**

  - Type: array
  
  - Items: string
  
  - Description: An array of glob patterns to be ignored when processing the code folder.


  **`job_specs`**

  - Type: array
  
  - Items: object (see **`job_schema`** below)
  
  - Description: An array of job specifications.


  **`name`**

  - Type: string
  
  - Min length: 1
  
  - Max length: 1024
  
  - Pattern: ^[a-zA-Z_][a-zA-Z0-9_\-\.]*$
  
  - Description: A name for the job configuration.


  **`shared`**

  - Type: object (see **`sharable_job_spec`** below)
  
  - Description: Shared settings that apply to all jobs.


  ## **Job Schema** (**`job_schema`**)

  **`command`**
  
  - Type: string
  
  - Description: The command to be executed for the job.

  **`notes`**
  
  - Type: string
  
  - Description: Optional notes for the job.


  ## **sharable_job_spec** (**`sharable_job_spec`**)

  **`conda_env`**
  
  - Type: string
  - Description: The conda environment to be used for the job.

  **`container_image`**

  - Type: string
  
  - Enum: (list of supported container images)
  
  - Description: The container image to be used for the job.

  **`cpu_family`**
  
  - Type: string
  
  - Enum: (list of supported CPU families)
  
  - Description: The CPU family to be used for the job.

  **`env_vars`**

  - Type: object
  
  - Property names: regex pattern ^[a-zA-Z][a-zA-Z0-9_]*$
  
  - Description: A dictionary of environment variables to be set for the job.

  **`gpu_type`**

  - Type: string
  
  - Enum: (list of supported GPU types)
  
  - Description: The GPU type to be used for the job.

  **`gpus`**

  - Type: integer
  
  - Min: 0
  
  - Max: (maximum number of GPUs)
  
  - Description: The number of GPUs to be used for the job.

  **`job_type`**

  - Type: string
  
  - Enum: ["general_purpose", "cpu_intensive", "memory_intensive"]
  
  - Description: The job type, which can be general purpose, CPU intensive, or memory intensive.

  **`max_retry`**
  
  - Type: integer
  
  - Min: 0
  
  - Description: The maximum number of times the job can be retried.

  **`memory_in_gb`**
  
  - Type: integer
  
  - Min: 1
  
  - Max: (maximum memory in GB)
  
  - Description: The amount of memory (in GB) to be used for the job.

  **`shm_size`**

  - Type: string
  
  - Description: The size of the shared memory for the job.


  **`timeout_in_hours`**

  - Type: integer
  
  - Min: 1
  
  - Max: 14 * 24 (14 days)
  
  - Description: The timeout duration (in hours) for the job.

  **`vcpus`**

  - Type: integer
  
  - Min: 1
  
  - Max: (maximum number of vCPUs)

  - Description: The number of virtual CPUs to be used for the job.

  
