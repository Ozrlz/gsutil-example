# Gsutil and all cloud sdk on a docker image

The image itself can use then whole cloud shell installation once the service account gets passed. If you want to use something else than the default entrypoint, try to override the entrypoint with th following:


    > docker container run --rm --interactive --tty --name cloud-shell --entrypoint=bash ${DOCKER_IMAGE_NAME}


## For kubernetes
If want to use on a gke cluster,first create a secret with the content of the service account and call it svc-account, the deployment will place the content of the file in the path

