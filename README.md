# Minimal [AWS-CLI](https://github.com/aws/aws-cli) & [AWS-CDK](https://github.com/aws/aws-cdk) & NodeJS/NPM/Yarn built on top of Alpine Linux Docker Image

This is a great base image for running aws-cdk in CI/CD environments.

## Supported Docker versions

This image is officially supported on Docker version 18.09.2+.

Support for older versions is provided on a best-effort basis.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small.

I am always thrilled to receive pull requests, and do my best to process them as fast as I can.

## Usage

### Synthesize a CDK stack

If the current directory contains a CDK App:

```sh
docker run --rm -v $(pwd):/app -w /app robertd/alpine-aws-cdk /bin/sh -c 'cdk synth'
```

If you want to synthesize all stacks in a TypeScript based CDK multi stack application:

```sh
docker run --rm -it -v $(pwd):/app -w /app \
  -e AWS_DEFAULT_REGION=<your_aws_region> \
  -e AWS_ACCESS_KEY_ID=<your_access_key_id> \
  -e AWS_SECRET_ACCESS_KEY=<your_secret_access_key> \
  robertd/alpine-aws-cdk /bin/sh -c "cdk --app 'npx ts-node bin/cdk-app-multi-stack.ts' synth '*'"
```

### Deploy a CDK stack with local AWS configuration

Deploy the stack using the local default AWS environment:

```sh
docker run --rm -v $(pwd):/app -v ~/.aws/:/root/.aws -w /app robertd/alpine-aws-cdk /bin/sh -c 'cdk deploy'
```

If you set the `--require-approval` option to `never` in the `cdk.json`file  and
CDK detects security-sensitive elements in the stack you will get the following warning and need to use the `-it` docker option for an interactive session:

> "--require-approval" is enabled and stack includes security-sensitive updates, but terminal (TTY) is not attached so we are unable to get a confirmation from the user

This also exposes all credentials stored in your AWS configuration.
To avoid this inject an AWS environment explicitely by exporting an access key id, the corresponding secret and a region:

```sh
docker run --rm -it -v $(pwd):/app -w /app \
  -e AWS_DEFAULT_REGION=<your_aws_region> \
  -e AWS_ACCESS_KEY_ID=<your_access_key_id> \
  -e AWS_SECRET_ACCESS_KEY=<your_secret_access_key> \
  robertd/alpine-aws-cdk /bin/sh -c 'cdk deploy'
```

### Destroy a CDK stack

To destroy a CDK stack you need an interactive process using the `-it` option:

```sh
docker run --rm -it -v $(pwd):/app -v ~/.aws/:/root/.aws -w /app robertd/alpine-aws-cdk /bin/sh -c 'cdk destroy'
```

### Create a new CDK stack

To initialize a new CDK stack with Typescript flavor:

```sh
run --rm -it -v $(pwd):/app -v ~/.aws/:/root/.aws -w /app robertd/alpine-aws-cdk /bin/sh -c 'cdk init --language typescript sample-app'
```
