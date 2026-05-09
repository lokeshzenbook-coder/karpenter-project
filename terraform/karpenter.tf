resource "aws_sqs_queue" "karpenter" {
  name = "${var.cluster_name}-karpenter"
}
