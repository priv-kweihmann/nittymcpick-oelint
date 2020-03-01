# nittymcpick-oelint

A friendly nitpicking bot to lint your bitbake file in a GitLab merge request.
This Bot is based on [Nitty McPick](https://github.com/priv-kweihmann/nittymcpick)

## Setup

See [nittymcpick](https://github.com/priv-kweihmann/nittymcpick)

## oelint-rulefile

Modify the file `oelint-rules.json` to your needs - the file in this repo is a suggested template.
For details see [oelint-adv](https://github.com/priv-kweihmann/oelint-adv)

## Difference to standard nittymcpick

* the linter configuration is fixed
  * this can be overridden by running the docker container with a custom command

## Prepared docker container

You can use the prepare docker container `privkweihmann/nittymcpick-oelint:latest`
