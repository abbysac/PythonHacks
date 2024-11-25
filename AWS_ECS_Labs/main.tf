
module "ecs" {
  source                    = "./ECS"
  vpc_id                    = "vpc-0e2a2fe453426e1ee"
  cluster_name              = "demo-api-cluster"
  cluster_service_name      = "cloudquicklabs-api-service"
  cluster_service_task_name = "cloudquicklabs-api-task"
  vpc_id_subnet_list        = ["subnet-003b10aa45a218a79", "subnet-0168829debdaca617", "subnet-05c8654cc2f4883c4"]
  execution_role_arn        = "arn:aws:iam::224761220970:role/ecsTaskExecutionRole"
  image_id                  = "224761220970.dkr.ecr.us-east-1.amazonaws.com/ecs-test"
}

