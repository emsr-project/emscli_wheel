# emscli

The `ems` command-line tool (emscli) is designed to manage and interact with your Kubernetes cluster for various tasks. It provides a convenient interface to work with Kubernetes resources.


## Example: 


  We provide two example, one is [helloworld](./example/helloworld) exmaple and the other is [mnist](./example/mnist) example.


## Command: `ems batch`


### Description

  The ems batch command provides a set of subcommands to manage and interact with Kubernetes batch jobs.

### Usage

  ```
  ems batch [-h] {cancel,clean,monitor,overview,restart,status,submit}
  ```


### Subcommands

  `ems batch submit`
  
  (Description of the subcommand: [doc](./docs/submit.md))


  `ems batch cancel`
  
  (Description of the subcommand: [doc](./docs/cancel.md))


  `ems batch clean`
  
  (Description of the subcommand: [doc](./docs/clean.md))


  `ems batch monitor`
  
  (Description of the subcommand: not yet implemented)


  `ems batch overview`

  (Description of the subcommand: [doc](./docs/overview.md))


  `ems batch restart`

  (Description of the subcommand: [doc](./docs/restart.md))


  `ems batch status`
  
  (Description of the subcommand: [doc](./docs/status.md))


## Install: `pip install`

  (Installation guide, only available for adiministor: [doc](./docs/install.md))
