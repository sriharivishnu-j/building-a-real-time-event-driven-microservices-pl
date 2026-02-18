provider "aws" {
  region = "us-west-2"
}

resource "aws_eks_cluster" "example" {
  name     = "example_cluster"
  role_arn = "${aws_iam_role.example.arn}"

  vpc_config {
    subnet_ids = aws_subnet.example.*.id
  }
}