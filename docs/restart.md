  ### Subcommands `ems batch restart`

  The `ems batch restart` command allows you to restart a specific batch or a specific job within a batch.

  **Usage**

  ```
  ems batch restart batch_name [job_name]
  ```

  **Positional arguments**

  - `batch_name`: The name of the batch to restart.

  - `job_name` (optional): The name of the specific job within the batch to restart. If not provided, the entire batch will be restarted.

  **Example**

  To restart an entire batch:

  ```
  ems batch restart example_batch
  ```

  To restart a specific job within a batch:

  ```
  ems batch restart example_batch example_job
  ```
