  ### Subcommands `ems batch overview`

  The `ems batch overview` command provides an overview of the running status of all batches, with options to filter the results based on user, active status, and age.

  **Usage**

  ```
  ems batch overview [-h] [-a] [-k] [-v] [-u USER] [-l LIMIT]
  ```

  **Optional arguments**

  - `-h, --help`: Show the help message and exit.

  - `-a, --all-users`: Show the status across all users.

  - `-k, --active-only`: Show only the unfinished batches.

  - `-v, --verbose`: Show all batches, including those submitted more than two weeks ago.

  - `-u USER, --user USER`: Show batches for a specific user.

  - `-l LIMIT, --limit LIMIT`: Set the maximum number of entries that can be returned.

  **Example**

  To get an overview of all active batches for user "john":

  ```
  ems batch overview -k -u john
  ```

  To get a verbose overview of all batches submitted within the last month, limited to 50 results:

  ```
  ems batch overview -v -l 50
  ```
