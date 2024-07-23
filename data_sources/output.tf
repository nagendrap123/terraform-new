output "ami_id" {
    value = data.aws_ami.ami-id.id
  
}
output "vpc_ownwer" {
    value = data.aws_vpc.default.owner_id
  
}
output "route_table" {
    value = data.aws_vpc.default.main_route_table_id
  
}
output "cidir" {
    value = data.aws_vpc.default.cidr_block
  
}
output "vpcid" {
    value = data.aws_vpc.default.id
  
}