FROM node:alpine

LABEL maintainer="robertd"

ENV AWSCDK_VERSION 1.26.0

RUN apk update && apk upgrade
RUN apk add --no-cache --update python3 python3-dev git

#pip3 needs to be run initialy to upgrade pip
RUN pip3 install --upgrade pip
RUN pip install boto3 \
  json-spec \
  yamllint

RUN pip install awscli --upgrade

RUN npm i -g aws-cdk@${AWSCDK_VERSION} \
  @aws-cdk/alexa-ask@${AWSCDK_VERSION} \
  @aws-cdk/app-delivery@${AWSCDK_VERSION} \
  @aws-cdk/assert@${AWSCDK_VERSION} \
  @aws-cdk/assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-accessanalyzer@${AWSCDK_VERSION} \
  @aws-cdk/aws-acmpca@${AWSCDK_VERSION} \
  @aws-cdk/aws-amazonmq@${AWSCDK_VERSION} \
  @aws-cdk/aws-amplify@${AWSCDK_VERSION} \
  @aws-cdk/aws-apigateway@${AWSCDK_VERSION} \
  @aws-cdk/aws-apigatewayv2@${AWSCDK_VERSION} \
  @aws-cdk/aws-appconfig@${AWSCDK_VERSION} \
  @aws-cdk/aws-applicationautoscaling@${AWSCDK_VERSION} \
  @aws-cdk/aws-appmesh@${AWSCDK_VERSION} \
  @aws-cdk/aws-appstream@${AWSCDK_VERSION} \
  @aws-cdk/aws-appsync@${AWSCDK_VERSION} \
  @aws-cdk/aws-athena@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling-common@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscaling-hooktargets@${AWSCDK_VERSION} \
  @aws-cdk/aws-autoscalingplans@${AWSCDK_VERSION} \
  @aws-cdk/aws-backup@${AWSCDK_VERSION} \
  @aws-cdk/aws-batch@${AWSCDK_VERSION} \
  @aws-cdk/aws-budgets@${AWSCDK_VERSION} \
  @aws-cdk/aws-certificatemanager@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloud9@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudformation@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudfront@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudtrail@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudwatch@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudwatch-actions@${AWSCDK_VERSION} \
  @aws-cdk/aws-codebuild@${AWSCDK_VERSION} \
  @aws-cdk/aws-codecommit@${AWSCDK_VERSION} \
  @aws-cdk/aws-codedeploy@${AWSCDK_VERSION} \
  @aws-cdk/aws-codepipeline@${AWSCDK_VERSION} \
  @aws-cdk/aws-codepipeline-actions@${AWSCDK_VERSION} \
  @aws-cdk/aws-codestar@${AWSCDK_VERSION} \
  @aws-cdk/aws-codestarnotifications@${AWSCDK_VERSION} \
  @aws-cdk/aws-cognito@${AWSCDK_VERSION} \
  @aws-cdk/aws-config@${AWSCDK_VERSION} \
  @aws-cdk/aws-datapipeline@${AWSCDK_VERSION} \
  @aws-cdk/aws-dax@${AWSCDK_VERSION} \
  @aws-cdk/aws-directoryservice@${AWSCDK_VERSION} \
  @aws-cdk/aws-dlm@${AWSCDK_VERSION} \
  @aws-cdk/aws-dms@${AWSCDK_VERSION} \
  @aws-cdk/aws-docdb@${AWSCDK_VERSION} \
  @aws-cdk/aws-dynamodb@${AWSCDK_VERSION} \
  @aws-cdk/aws-dynamodb-global@${AWSCDK_VERSION} \
  @aws-cdk/aws-ec2@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecr@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecr-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecs@${AWSCDK_VERSION} \
  @aws-cdk/aws-ecs-patterns@${AWSCDK_VERSION} \
  @aws-cdk/aws-efs@${AWSCDK_VERSION} \
  @aws-cdk/aws-eks@${AWSCDK_VERSION} \
  @aws-cdk/aws-eks-legacy@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticache@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticbeanstalk@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancing@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancingv2@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancingv2-targets@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticsearch@${AWSCDK_VERSION} \
  @aws-cdk/aws-emr@${AWSCDK_VERSION} \
  @aws-cdk/aws-events@${AWSCDK_VERSION} \
  @aws-cdk/aws-events-targets@${AWSCDK_VERSION} \
  @aws-cdk/aws-eventschemas@${AWSCDK_VERSION} \
  @aws-cdk/aws-fms@${AWSCDK_VERSION} \
  @aws-cdk/aws-fsx@${AWSCDK_VERSION} \
  @aws-cdk/aws-gamelift@${AWSCDK_VERSION} \
  @aws-cdk/aws-glue@${AWSCDK_VERSION} \
  @aws-cdk/aws-greengrass@${AWSCDK_VERSION} \
  @aws-cdk/aws-guardduty@${AWSCDK_VERSION} \
  @aws-cdk/aws-iam@${AWSCDK_VERSION} \
  @aws-cdk/aws-inspector@${AWSCDK_VERSION} \
  @aws-cdk/aws-iot@${AWSCDK_VERSION} \
  @aws-cdk/aws-iot1click@${AWSCDK_VERSION} \
  @aws-cdk/aws-iotanalytics@${AWSCDK_VERSION} \
  @aws-cdk/aws-iotevents@${AWSCDK_VERSION} \
  @aws-cdk/aws-iotthingsgraph@${AWSCDK_VERSION} \
  @aws-cdk/aws-kinesis@${AWSCDK_VERSION} \
  @aws-cdk/aws-kinesisanalytics@${AWSCDK_VERSION} \
  @aws-cdk/aws-kinesisfirehose@${AWSCDK_VERSION} \
  @aws-cdk/aws-kms@${AWSCDK_VERSION} \
  @aws-cdk/aws-lakeformation@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda-destinations@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda-event-sources@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda-nodejs@${AWSCDK_VERSION} \
  @aws-cdk/aws-logs@${AWSCDK_VERSION} \
  @aws-cdk/aws-logs-destinations@${AWSCDK_VERSION} \
  @aws-cdk/aws-managedblockchain@${AWSCDK_VERSION} \
  @aws-cdk/aws-mediaconvert@${AWSCDK_VERSION} \
  @aws-cdk/aws-medialive@${AWSCDK_VERSION} \
  @aws-cdk/aws-mediastore@${AWSCDK_VERSION} \
  @aws-cdk/aws-msk@${AWSCDK_VERSION} \
  @aws-cdk/aws-neptune@${AWSCDK_VERSION} \
  @aws-cdk/aws-opsworks@${AWSCDK_VERSION} \
  @aws-cdk/aws-opsworkscm@${AWSCDK_VERSION} \
  @aws-cdk/aws-pinpoint@${AWSCDK_VERSION} \
  @aws-cdk/aws-pinpointemail@${AWSCDK_VERSION} \
  @aws-cdk/aws-qldb@${AWSCDK_VERSION} \
  @aws-cdk/aws-ram@${AWSCDK_VERSION} \
  @aws-cdk/aws-rds@${AWSCDK_VERSION} \
  @aws-cdk/aws-redshift@${AWSCDK_VERSION} \
  @aws-cdk/aws-robomaker@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53-patterns@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53-targets@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53resolver@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-deployment@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-notifications@${AWSCDK_VERSION} \
  @aws-cdk/aws-sagemaker@${AWSCDK_VERSION} \
  @aws-cdk/aws-sam@${AWSCDK_VERSION} \
  @aws-cdk/aws-sdb@${AWSCDK_VERSION} \
  @aws-cdk/aws-secretsmanager@${AWSCDK_VERSION} \
  @aws-cdk/aws-securityhub@${AWSCDK_VERSION} \
  @aws-cdk/aws-servicecatalog@${AWSCDK_VERSION} \
  @aws-cdk/aws-servicediscovery@${AWSCDK_VERSION} \
  @aws-cdk/aws-ses@${AWSCDK_VERSION} \
  @aws-cdk/aws-ses-actions@${AWSCDK_VERSION} \
  @aws-cdk/aws-sns@${AWSCDK_VERSION} \
  @aws-cdk/aws-sns-subscriptions@${AWSCDK_VERSION} \
  @aws-cdk/aws-sqs@${AWSCDK_VERSION} \
  @aws-cdk/aws-ssm@${AWSCDK_VERSION} \
  @aws-cdk/aws-stepfunctions@${AWSCDK_VERSION} \
  @aws-cdk/aws-stepfunctions-tasks@${AWSCDK_VERSION} \
  @aws-cdk/aws-transfer@${AWSCDK_VERSION} \
  @aws-cdk/aws-waf@${AWSCDK_VERSION} \
  @aws-cdk/aws-wafregional@${AWSCDK_VERSION} \
  @aws-cdk/aws-wafv2@${AWSCDK_VERSION} \
  @aws-cdk/aws-workspaces@${AWSCDK_VERSION} \
  @aws-cdk/cfnspec@${AWSCDK_VERSION} \
  @aws-cdk/cloudformation-diff@${AWSCDK_VERSION} \
  @aws-cdk/core@${AWSCDK_VERSION} \
  @aws-cdk/custom-resources@${AWSCDK_VERSION} \
  @aws-cdk/cx-api@${AWSCDK_VERSION} \
  @aws-cdk/region-info@${AWSCDK_VERSION} \
  typescript@latest \
  @types/node@latest
