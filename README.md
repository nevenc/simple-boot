# simple-boot

This is a very simple Spring Boot application. The purpose of this application is to demonstrate various developer tasks:
* Check out project from Github
* Build an application
* Run application locally
* Deploy an application to the platform
* Configure simple CI pipeline using Concourse CI

## Check out project from Github
```bash
git clone https://github.com/nevenc-pivotal/simple-boot.git
cd simple-boot
```

## Building simple-boot Application
```bash
./mvnw clean package
```

## Run application locally
```bash
./mvnw spring-boot:run
```

## Deploy an application to the platform
```bash
cf login -a https://api.SYSTEM_DOMAIN
cf push
```

## Configuring Concourse CI (Linux/MacOS)

* copy credentials sample and populate with your credentials
```bash
mkdir ~/.concourse/
cd simple-boot/ci
cp simple-boot.ci.yml.SAMPLE ~/.concourse/simple-boot.ci.yml
```

* login into concourse, use your concourse login details
```bash
./concourse-login.sh
```

* list all existing pipelines
```bash
./list-pipelines.sh
```

* set a `simple-boot` pipeline
```bash
./set-pipeline.sh
```

* un-pause pipeline
```bash
./unpause-pipeline.sh
```

* observe the pipeline GUI
  * observe the `repo-master` repository
  * observe the `unit-test` job
  * observe the `cf-dev` repository
  * observe the `deploy-to-cf-dev` job

* make a commit to the repo defined in your credentials file, e.g. `~/.concourse/simple-boot.ci.yml`
  * observe the pipelines automatically execute again

* in case you want to remove the pipeline completely:
```bash
./destroy-pipeline.sh
```


