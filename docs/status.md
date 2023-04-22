 ### ems batch status

  The `ems batch status` command allows you to view the running status of a specified batch or a specific job within a batch.

  **Usage**

  ```
  ems batch status [-u USER] [-r] [-l LIMIT] [-s] batch_name [job_name]
  ```

  **Positional arguments**

  - `batch_name`: The name of the batch to check the status.
  
  - `job_name` (optional): The name of the specific job within the batch to check the status. If not provided, the status of the entire batch will be displayed.

  **Options**

  - `-u USER, --user USER`: Shows batches under a different user.

  - `-r, --raw-output`: Shows results in raw CSV format instead.

  - `-l LIMIT, --limit LIMIT`: Maximum number of entries that can be returned.

  - `-s, --snapshot`: Show a snapshot of the current status instead.

  **Example**

  To check the status of an entire batch:

  ```
  ems batch status example_batch
  ```

  To check the status of a specific job within a batch:

  ```
  ems batch status example_batch example_job
  ```