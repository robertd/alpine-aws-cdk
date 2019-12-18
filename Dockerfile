FROM node:alpine

LABEL maintainer="robertd"

ENV AWSCDK_VERSION 1.19.0

RUN apk update && apk upgrade
RUN apk add --no-cache --update python3 python3-dev git

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
  @aws-cdk/aws-cloudfront@${AWSCDK_VERSION} \
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
  @aws-cdk/aws-cognito@${AWSCDK_VERSION} \
  @aws-cdk/aws-applicationautoscaling@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling-common@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling-hooktargets@${AWSCDK_VERSION} \
  @aws-cdk/aws-certificatemanager@${AWSCDK_VERSION} \
  @aws-cdk/aws-codebuild@${AWSCDK_VERSION} \
  @aws-cdk/aws-codecommit@${AWSCDK_VERSION} \
  @aws-cdk/aws-codepipeline@${AWSCDK_VERSION} \
  @aws-cdk/aws-dynamodb@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecr@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecr-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancing@${AWSCDK_VERSION} \
  @aws-cdk/aws-events-targets@${AWSCDK_VERSION} \
  @aws-cdk/aws-kinesis@${AWSCDK_VERSION} \
  @aws-cdk/aws-kms@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53-targets@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-deployment@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-notifications@${AWSCDK_VERSION} \
  @aws-cdk/aws-secretsmanager@${AWSCDK_VERSION} \
  @aws-cdk/aws-servicediscovery@${AWSCDK_VERSION} \
  @aws-cdk/aws-sns-subscriptions@${AWSCDK_VERSION} \
  @aws-cdk/aws-ssm@${AWSCDK_VERSION} \
  @aws-cdk/aws-stepfunctions@${AWSCDK_VERSION} \
  @aws-cdk/assets@${AWSCDK_VERSION} \
  @aws-cdk/core@${AWSCDK_VERSION} \
  @aws-cdk/cx-api@${AWSCDK_VERSION} \
  @aws-cdk/region-info@${AWSCDK_VERSION} \
  typescript@latest \
  @types/node@latest
