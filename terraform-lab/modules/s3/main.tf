resource "aws_s3_bucket" "this" {
  for_each = toset(var.bucket_names)
  bucket   = each.value

  tags = merge(
    {
      Name        = "terraform-lab"
      Environment = var.environment
    },
    var.tags
  )
}



resource "aws_s3_bucket_public_access_block" "this" {
  for_each = aws_s3_bucket.this
  bucket   = each.value.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "this" {
  for_each = aws_s3_bucket.this
  bucket   = each.value.id

  versioning_configuration {
    status = "Enabled"
  }
}