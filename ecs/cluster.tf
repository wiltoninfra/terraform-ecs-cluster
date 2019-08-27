resource "aws_ecs_cluster" "app-ecs-cluster" {
    name = "${var.ecs-cluster-name}"
}