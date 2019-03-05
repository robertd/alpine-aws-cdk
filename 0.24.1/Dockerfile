FROM node:alpine

LABEL maintainer="robertd"

ENV AWSCDK_VERSION 0.24.1

RUN apk update && apk upgrade
RUN apk add --no-cache --update \
  python3 python3-dev git

#pip3 needs to be run initialy to upgrade pip
RUN pip3 install --upgrade pip
RUN pip install boto3 \
  json-spec \
  yamllint

RUN pip install awscli --upgrade

RUN npm i -g aws-cdk@${AWSCDK_VERSION} \
  @aws-cdk/aws-amazonmq@${AWSCDK_VERSION} \
  @aws-cdk/aws-apigateway@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling@${AWSCDK_VERSION} \
  @aws-cdk/aws-batch@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudformation@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudwatch@${AWSCDK_VERSION} \
  @aws-cdk/aws-ec2@${AWSCDK_VERSION} \
  @aws-cdk/aws-efs@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecs@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancingv2@${AWSCDK_VERSION} \
  @aws-cdk/aws-events@${AWSCDK_VERSION} \
  @aws-cdk/aws-iam@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3@${AWSCDK_VERSION} \
  @aws-cdk/aws-sns@${AWSCDK_VERSION} \
  @aws-cdk/aws-sqs@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda-event-sources@${AWSCDK_VERSION} \
  @aws-cdk/aws-logs@${AWSCDK_VERSION} \
  typescript@latest \
  @types/node@latest
