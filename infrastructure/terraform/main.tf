provider "aws" {
  region = "us-west-2"
}

resource "aws_eks_cluster" "example" {
  name     = "example"
  role_arn = "${aws_iam_role.eks_cluster.arn}"
  vpc_config {
    subnet_ids = ["subnet-12345"]
  }
}
