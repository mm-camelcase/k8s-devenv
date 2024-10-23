# Workday Cluster Setup

## Run the setup script

```shell
./devenv.sh
```

and wait for all the components to be installed.

The script is performing the following actions

- starting minikube
- configuring the dev namespace
- ensuring authentication with AWS
- login to docker hub
- adding all required helm repos
- configuring the local DB
- installing services
- setting up port-forwards for service access

## Port Forwards

The setup script automatically sets up port-forwards so that the required applications & services can be accessed from the host m/c.

```shell
_____________________________________________________________________________________________
| SERVICE                        | PORT | URL                                                |
---------------------------------------------------------------------------------------------
| svc/user-service               | 8080 | http://127.0.0.1:8080                              |
| svc/db-devenv-postgresql       | 5432 |                                                    |
---------------------------------------------------------------------------------------------
```

The port forward script can also be run manually...

```shell
./scripts/wd-cluster/port-forwards.sh
```

there is an accompanying port forward kill script if required...

```shell
./scripts/wd-cluster/kill-port-forwards.sh
```

## Accessing Cluster Services


### UI Access

Home page: [http://127.0.0.1:8080](http://127.0.0.1:8080) 
API      : [http://localhost:8080/swagger-ui/index.html] (http://127.0.0.1:8080)

### DB Access

![Postgresql](../images/pgadmin.jpg)


