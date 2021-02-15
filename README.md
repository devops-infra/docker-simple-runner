# Dockerized simplified environment with Make and Docker to be used as CI/CD runner for more complicated images, like docker-simple-runner

Docker image with Make, Docker and Python

**Docker image is available at [DockerHub](https://hub.docker.com/) under [devopsinfra/docker-simple-runner](https://hub.docker.com/repository/docker/devopsinfra/docker-simple-runner).**
<br>
For example:
 * `devopsinfra/docker-simple-runner:latest`

**Source code is available at [devopsinfra/docker-simple-runner](https://github.com/devopsinfra/docker-simple-runner).**


## Badge swag
[
![GitHub](https://img.shields.io/badge/github-devops--infra%2Fdocker--simple--runner-brightgreen.svg?style=flat-square&logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/devops-infra/docker-simple-runner?color=brightgreen&label=Code%20size&style=flat-square&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/devops-infra/docker-simple-runner?color=brightgreen&label=Last%20commit&style=flat-square&logo=github)
](https://github.com/devops-infra/docker-simple-runner "shields.io")
[![Push to master](https://img.shields.io/github/workflow/status/devops-infra/docker-simple-runner/Push%20to%20master?color=brightgreen&label=Master%20branch&logo=github&style=flat-square)
](https://github.com/devops-infra/docker-simple-runner/actions?query=workflow%3A%22Push+to+master%22)
[![Push to other](https://img.shields.io/github/workflow/status/devops-infra/docker-simple-runner/Push%20to%20other?color=brightgreen&label=Pull%20requests&logo=github&style=flat-square)
](https://github.com/devops-infra/docker-simple-runner/actions?query=workflow%3A%22Push+to+other%22)
<br>
[
![DockerHub](https://img.shields.io/badge/docker-devopsinfra%2Fdocker--simple--runner-blue.svg?style=flat-square&logo=docker)
![Dockerfile size](https://img.shields.io/github/size/devops-infra/docker-simple-runner/Dockerfile?label=Dockerfile%20size&style=flat-square&logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/devopsinfra/docker-simple-runner?color=blue&label=Pulls&logo=docker&style=flat-square)
](https://hub.docker.com/r/devopsinfra/docker-simple-runner "shields.io")
<br>
[
![DockerHub](https://img.shields.io/badge/docker-devopsinfra%2Fdocker--simple--runner:latest-blue.svg?style=flat-square&logo=docker)
![Docker version](https://img.shields.io/docker/v/devopsinfra/docker-simple-runner/latest?color=blue&label=Version&logo=docker&style=flat-square)
![Image size](https://img.shields.io/docker/image-size/devopsinfra/docker-simple-runner/latest?label=Image%20size&style=flat-square&logo=docker)
](https://hub.docker.com/r/devopsinfra/docker-simple-runner "shields.io")
<br>
[
![DockerHub](https://img.shields.io/badge/docker-devopsinfra%2Fdocker--simple--runner:aws--latest-blue.svg?style=flat-square&logo=docker)
![Docker version](https://img.shields.io/docker/v/devopsinfra/docker-simple-runner/aws-latest?color=blue&label=Version&logo=docker&style=flat-square)
![Image size](https://img.shields.io/docker/image-size/devopsinfra/docker-simple-runner/aws-latest?label=Image%20size&style=flat-square&logo=docker)
](https://hub.docker.com/r/devopsinfra/docker-simple-runner "shields.io")
<!-- ![Docker Pulls](https://img.shields.io/docker/pulls/devopsinfra/docker-simple-runner/aws-latest?color=blue&label=Pulls&logo=docker&style=flat-square) -->


# Summary
<i>To be done</i>


# Usage
<i>To be done</i>

For example:
<i>To be done</i>


# Additional software available

| Name      | Type           | Description                                                                                                              | Source/Documentation                               |
| --------- | -------------- | ------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------- |
| bash      | Binary         | For color output. Assures also access to some builtins.                                                                  | https://www.gnu.org/software/bash/                 |
| docker    | Binary         | For running another container, e.g. my [devopsinfra/docker-terragrunt](https://github.com/devopsinfra/docker-terragrunt) | https://github.com/devopsinfra/docker-terragrunt   |
| make      | Binary         | For using `Makefile` instead of scripts in deployment process.                                                           | https://www.gnu.org/software/make/                 |
| ncurses   | Binary         | For expanding `Makefile` with some colors.                                                                               | https://invisible-island.net/ncurses/announce.html |
| python3   | Binary         | For running more complex scripts during deployment process.                                                              | https://www.python.org/                            |
| requests  | Python library | For sending HTTP requests, for example integration with Slack                                                            | https://github.com/psf/requests                    |
| slack_sdk | Python library | For integration with Slack applications/bots, e.g. creating channels for notifications                                   | https://github.com/slackapi/python-slack-sdk       |
