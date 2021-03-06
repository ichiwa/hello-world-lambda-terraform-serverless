resource "aws_iam_role" "lambda_hello_world_role" {
  name = "lambda_hello_world_role"
  path = "/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": ["lambda.amazonaws.com"]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "lambda_hello_world_role_policy" {
  name = "lambda_hello_world_role_policy"
  role = "${aws_iam_role.lambda_hello_world_role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Effect": "Allow",
          "Action": [
              "logs:CreateLogGroup",
              "logs:CreateLogStream",
              "logs:PutLogEvents"
          ],
          "Resource": "arn:aws:logs:*:*:*"
      },
      {
          "Effect": "Allow",
          "Action": [
              "iam:GetRole",
              "iam:PassRole"
          ],
          "Resource": "*"
      }
  ]
}
EOF
}
