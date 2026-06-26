@echo off

::Get parameters
set /p templateFile="What's the template file? "
set /p templateName="Enter template display name: "


::Install template
scp %templateFile% root@10.11.99.1:/usr/share/remarkable/templates/
ssh -T root@10.11.99.1 "bash -s" < remarkableCommands.txt """%templateFile%""" "%templateName%"