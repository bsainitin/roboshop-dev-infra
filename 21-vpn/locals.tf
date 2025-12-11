locals {
  ami_id = data.aws_ami.openvpn.id
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  openvpn_sg_id = data.aws_ssm_parameter.openvpn_sg_id.value
  hosted_zone_id = data.aws_route53_zone.hosted_zone.zone_id
  common_tags = {
    Project = var.project_name
    Environment = var.environment
    Terraform = true
  }
}