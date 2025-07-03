# Docker Bug

This repository contains a reproduction for a bug that is present in nx in combination with docker.

When trying to start an nx application in a docker container, the app may not start in 50% of cases. You need to restart the container a few times or run `yarn nx reset` in the project root once, so that the container may start again.

Steps to reproduce:

```bash
yarn install

docker compose up

# kill the container

docker compose up # the app may not start. Repeat until this happens (should happen very often)
```
