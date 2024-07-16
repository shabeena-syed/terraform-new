#locals {
    # name    = var.instance_names[count.index] == "froentend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
    # record_value = [aws_instance.expense[count.index]] == "froentend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
#}


# taggle line command =edit [#]