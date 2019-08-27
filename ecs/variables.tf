
variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default = "app-ecs-cluster"
}

variable "ecs-service-role-arn" {
    default = "app-ecs-cluster"
}

variable "ecs-service-name" {
    default = "app-ecs-service"
}

variable "ecs-load-balancer-name" {
    default = "app-ecs-lb"
}

