security_groups             = ["sg-009876543213345"]
availability_zone           = "us-east-1d"
subnet_id                   = "subnet-88765gfeds3455"
Cost                        = "SXXT"

app = {
  "ami"           = "ami-xxxxxxxxxxxxxxxxxx"
  "instance_type" = "t3a.large"
  "private_ips"   = ["110.10.15.150"]
  "name"          = "RTC-SE-SQL-E2E-APP"
  "eipallocid"    = "eipalloc-23456trfghu"
}
