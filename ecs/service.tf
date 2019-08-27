resource "aws_ecs_service" "app-ecs-service" {
  	name            = "${var.ecs-service-name}"
  	iam_role        = "${var.ecs-service-role-arn}"
  	cluster         = "${aws_ecs_cluster.app-ecs-cluster.id}"
  	task_definition = "${aws_ecs_task_definition.app-test-py.arn}"
  	desired_count   = 1

  	load_balancer {
    	target_group_arn  = "${var.ecs-target-group-arn}"
    	container_port    = 80
    	container_name    = "app-test-py"
	}
}