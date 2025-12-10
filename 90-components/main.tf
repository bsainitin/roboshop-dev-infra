module "components" {
  source = "git::https://github.com/bsainitin/terraform-roboshop-component.git?ref=main"

  for_each = var.components
  component = each.key
  rule_priority = each.value.rule_priority
}

