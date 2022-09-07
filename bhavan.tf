resource = "aws_resource" "bastion" {
    name = "bastion"
    vpc_id = "vpc-071142ea06fc27d78"
}
      ingress {
          description = "admin"
          from port =22
          to port =22
          protocal = "tcp"
          cidr_blocks = ["103.110.170.84/32"]
      }
        egress {
         description = "admin"
          from port =0
          to port =0
          protocal = "-1"
          cidr_blocks = ["0.0.0.0/0"]
        }
          tags = {
              name = "bastion"

          }