resource "aws_instance" "expense" {
    for_each = var.instance_names #each.key and each.value
   ami = data.aws_ami.ami_info.id
   vpc_security_group_ids = ["sg-00198fc04b5bf2003"]
   # we can define created resource
   instance_type = each.value
  #left side are arguments and right side are values.
  tags = merge(
      var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
}