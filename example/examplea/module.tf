module "linuxvm" {
  source      = "../../"
  common_tags = var.common_tags
  public_key  = module.key.public_key
}
