# main.tf
module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "my terraformvpc"
}

module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  cidr_block  = "10.0.0.0/24"
  subnet_az   = "ap-south-1a"
  subnet_name = "myterraformsbnta"
}

module "internet_gateway" {
  source       = "./modules/igw"
  vpc_id       = module.vpc.vpc_id
  gateway_name = "myigw"
}

module "route_table" {
  source           = "./modules/rttable"
  vpc_id           = module.vpc.vpc_id
  gateway_id       = module.internet_gateway.gateway_id
  route_table_name = "my route table"
}
module "route_table_association" {
  source         = "./modules/rttable-assotn"
  subnet_id      = module.subnet.subnet_id
  route_table_id = module.route_table.route_table_id
}


module "security_group" {
  source                     = "./modules/sgroup"
  vpc_id                     = module.vpc.vpc_id
  security_group_name        = "my_security_group"
  security_group_description = "Allow inbound SSH and HTTP traffic"
}

module "elastic_ip" {
  source   = "./modules/elp-ip"
  eip_name = "example-eip"
}

module "ec2_instance" {
  source                      = "./modules/instance"
  ami                         = "ami-013168dc3850ef002"
  instance_type               = "t2.micro"
  key_name                    = "pnewkey"
  security_group_id           = module.security_group.security_group_id
  subnet_id                   = module.subnet.subnet_id
  associate_public_ip_address = true
  instance_count              = 1
  instance_name               = "Gangtoka"
}

