module "ec2" {
  source           = "./ec2"
  ami_in           = var.ami
  instance_type_in = var.instance_type
  sg_id_in         = module.security_group.sg_name
  tags_in = {
    Name = "ExampleAppServerInstance"
  }
}