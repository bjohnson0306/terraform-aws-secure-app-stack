module "s3" {
  source       = "./modules/s3"
  bucket_names = var.bucket_names
  environment  = var.environment
  tags         = var.tags
}