  ### Subcommands `ems batch cancel`

  The `ems batch cancel` command allows you to cancel a batch job or a specific set of jobs within a batch.

  **Usage**

  ```
  ems batch cancel [-h] [-u USER] batch [jobs ...]
  ```


  **Positional arguments**

  - `batch`: The name of the batch that contains the jobs you want to cancel.

  - `jobs` (optional): A space-separated list of job names within the specified batch to cancel. If no job names are provided, all jobs in the batch will be canceled.


  **Optional arguments**

  - `-h, --help`: Show the help message and exit.

  - `-u USER, --user USER`: Specify the user associated with the batch job(s) you want to cancel. If not provided, the command will use the current user.

  **Example**

  To cancel all jobs in a batch named "example_batch":

  ```
  ems batch cancel example_batch
  ```

  To cancel specific jobs "job1" and "job2" within the "example_batch":

  ```
  ems batch cancel example_batch job1 job2
  ```