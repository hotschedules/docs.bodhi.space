##Installation

The agent cli is installed via a platform specific installer or via node package manager (NPM). The cli prefers to be installed globally.

````
$> npm install -g agent-cli
````

##General Usage

The general structure of the a command is as follows:

````
$> npm install agent-cli [options] <action> [arguments]
````

###Options

Options are prefixed with `-` or `--` to separate them from arguments. Each action defines the options it uses, but the options are consistent in naming and usage across the commands.

####Common Options

long | short | arg    | description
------| --------- | ------ | -------------
--help | none | none   | print help about the command
--verbose | -v | none   | print more detailed output
--quiet   | -q   | none   | print essential output
--config  | -f  | path   | specifies the agent's configuration file
--home    | -h    | path   | specifies the agent's working directory
--force   | -F   | none   | directive to override safety logic

###Arguments
The cli interprets the first argument (non-option) as the action. All subseuqent arguements are command specific. 


Each action is described below.
