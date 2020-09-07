# az-cli
az cli with docker and kubectl

[image on docker hub](https://hub.docker.com/repository/docker/jfkhatesdocker/az-cli)


can be used e.g. in a gitlab pipeline:
````
deploy:
  stage: deploy
  image: jfkhatesdocker/az-cli
  tags:
    - docker
  before_script:
    - az login -u $AZ_LOGIN -p $AZ_PW
    - az aks get-credentials --resource-group <resource_group> -n <cluster_name>
  script:
    - kubectl set image deployment/<deployment_name> <deployment_name>=$DOCKER_REGISTRY/<image_name>
````

this of course requires pushing your docker images to a docker registry first.
