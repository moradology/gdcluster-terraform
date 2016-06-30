output "ec2.1.ip" {
  value = "${aws_spot_instance_request.wavemesa1.public_dns}"
}

