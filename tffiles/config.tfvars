security_groups             = ["sg-009876543213345"]
availability_zone           = "us-east-1d"
subnet_id                   = "subnet-88765gfeds3455"
Cost                        = "SEFT"

app = {
  "ami"           = "ami-07335d7765ab81adc"
  "instance_type" = "t3a.large"
  "private_ips"   = ["110.10.15.150"]
  "name"          = "RTC-SE-SQL-E2E-APP"
  "eipallocid"    = "eipalloc-23456trfghu"
}
