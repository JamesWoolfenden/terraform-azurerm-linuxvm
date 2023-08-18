module "key" {
  source  = "git::https://github.com/JamesWoolfenden/terraform-tls-key.git?ref=f1f18198362a540dacad1a164cf654fbe5c5ee07"
  out_dir = path.module
}
