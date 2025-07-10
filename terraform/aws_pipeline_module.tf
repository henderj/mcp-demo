# Terraform module for LinkedIn Web Scraping ELT Pipeline in AWS

module "aws_pipeline" {
  source = "./modules/aws_pipeline"

  # AWS Lambda for scraping LinkedIn data
  lambda_function_name = "ScrapeLinkedInData"

  # S3 bucket for storing raw data
  s3_bucket_name = "linkedin-raw-data"

  # AWS Glue for data transformation
  glue_job_name = "CleanAndTransformData"

  # Amazon Redshift for loading data
  redshift_cluster_identifier = "linkedin-redshift-cluster"

}