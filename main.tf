variable "app_name" {
  default = "MyApp"
}

variable "app_version" {
  default = "1.0.0"
}

variable "environment" {
  default = "production"
}

variable "replicas" {
  default = 3
}

# Use templatefile to load and render the YAML template

resource "aws_api_gateway_rest_api" "rest_api" {
  name        = "example-rest-api"
  description = "This is an example REST API"
  value = templatefile("cust.yaml", {})

}
