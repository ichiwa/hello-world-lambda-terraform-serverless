resource "aws_lambda_function" "lambda_hello_world" {
  filename         = "../src/.serverless/lambda-hello-world.zip"
  source_code_hash = "${base64sha256(file("../src/.serverless/lambda-hello-world.zip"))}"
  description      = "hello world lambda"
  function_name    = "helloWorld"
  runtime          = "nodejs8.10"
  timeout          = 60
  memory_size      = 128
  role             = "${aws_iam_role.lambda_hello_world_role.arn}"
  handler          = "index.helloWorld"

  environment {
    variables = {
      ENV = "production"
    }
  }
}

output "Lambda Endpoint" {
  value = "${aws_api_gateway_deployment.lambda_deployment.invoke_url}"
}
