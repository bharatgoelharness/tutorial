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

  value = templatefile("cust.yaml", {})

}
