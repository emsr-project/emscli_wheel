  ### Subcommands `ems batch clean`

  The `ems batch clean` command allows you to delete previously submitted batches based on their age.

  **Usage**

  ```
  ems batch clean [-h] {days-ago}
  ```

  **Positional arguments**

  - `{days-ago}`: Specify the number of days ago to use as a cutoff for deleting batches. Batches older than this value will be deleted.

  **Optional arguments**

  - `-h, --help`: Show the help message and exit.

  **Example**

  To delete batches older than 7 days:

  ```
  ems batch clean -days-ago 7
  ```
