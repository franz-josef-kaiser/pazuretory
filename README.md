# 💣 Pazuretory ☠️

The name is made up. Credentials: _Azure, Purgatory, and all the lost hours trying to figure out 
why the providers tool can not log in._

Are you stuck with the Microsoft Azure CLI? Do you have to answer any of those questions with _YES_ ?
 * Can not log in?
 * Can not log out? 
 * Can you not add an account?
 * Do your `az login` commands end up with errors referring to other accounts?
 * nom nom nom
…then this script is for you.

## Prerequisites

Only the [Azure az CLI tool](https://docs.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest).

## How does it work?

The following steps have been reliable so far.

1. Performs log out of current az login via Azure CLI tool
1. Purges cache using Azure CLI tool
1. Removes JSON sls token cache from the Azure dir in current users home dir
1. Removes JSON access token cache from the Azure dir in current users home dir
1. Removes JSON profile cache from the Azure dir in current users home dir
1. Performs log in using Azure CLI tool

## Does not work? Contributing!

Found another thing that can be burned to the ground and rebuild? File a pull request! 
Or open at least a ticket. We are dealing with a proprietary, scripted toolset, remote 
controlling a proprietary UI with vendors workflows, where we have zero saying. With 
every piece of code like this, we are aiming at a moving target. This means: Every input 
helps us all.