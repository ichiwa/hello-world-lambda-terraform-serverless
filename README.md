# Hello World on Lambda by terraform & serverless framework

> create lambda function by simple terraform, serverless

## Installation

```sh
$ npm i --no-save
```

## Usage

### Start by serverless

```sh
$ npm run start
```

### Deploy AWS development

```sh
$ cd terraform
$ terraform plan
$ terraform apply

...

Apply complete! Resources: 11 added, 0 changed, 0 destroyed.

Outputs:

base_url = https://aaaa.execute-api.ap-northeast-1.amazonaws.com/helloWorld
```

#### AWS configuration

```sh
$ export AWS_ACCESS_KEY_ID=key
$ export AWS_SECRET_ACCESS_KEY=secret
$ export AWS_DEFAULT_REGION=ap-northeast-1
```
