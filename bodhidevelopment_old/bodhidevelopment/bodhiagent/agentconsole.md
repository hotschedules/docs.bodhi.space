##Usage Commands

###console

````
$> agent-cli console
````

##Configuration Commands

###reset

A reset command is used to reset the agent's state.

````
$> agent-cli reset
````

long | short | arg    | description
------| --------- | ------ | -------------
--home    | -h   | path   | specifies the agent's working directory
--HARD    | -H   | path   | destroy all state

###revoke

````
$> agent-cli revoke
````

A revoke command will revoke the agent's access token but leave all other agent data intact.
