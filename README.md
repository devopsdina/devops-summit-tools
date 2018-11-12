# devops-summit-tools

This cookbook will download and install the tools that go with the *Don't be a click monster* presentation first given at the
2018 Cloud Expo on the DevOps track.

By running this cookbook you will have the tools needed to start the journey of Azure automation.

## Prerequisites

[ChefDK](https://downloads.chef.io/chefdk)

## Supported Platforms

Windows

## How to run

Open powershell, navigate to devops-summit-tools directory
Run `chef-client -z ./recipes/default.rb`

## TO-DO

At this time, one still needs to manually install the powershell extension in VS code.
I'd also recommend the Azure Resource Manager Tools extention which is very helpful when developing ARM templates.