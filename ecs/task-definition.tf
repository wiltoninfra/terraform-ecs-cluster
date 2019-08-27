resource "aws_ecs_task_definition" "app-test-py" {
    family                = "app-test-py"
    container_definitions = "${file("./ecs/task-definition.json")}"
}