resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.key_path)}"
}

resource "aws_spot_instance_request" "wavemesa1" {
  ami           = "ami-a4827dc9"
  spot_price    = "${var.spot_price}"
  instance_type = "m3.xlarge"
  block_duration_minutes = 360
  tags {
    Name = "wavemesa1"
  }

  security_groups = ["${aws_security_group.gdcluster.name}"]
  key_name                    = "${aws_key_pair.auth.id}"

  provisioner "remote-exec" {
    scripts = [
      "./deploy/scripts/install-docker.sh",
      "./deploy/scripts/pull-common-images.sh",
      "./deploy/scripts/pull-master-images.sh"
    ]
  }
}

resource "aws_spot_instance_request" "wavemesa2" {
  ami           = "ami-a4827dc9"
  spot_price    = "${var.spot_price}"
  instance_type = "m3.xlarge"
  block_duration_minutes = 360
  tags {
    Name = "wavemesa2"
  }

  security_groups = ["${aws_security_group.gdcluster.name}"]

  provisioner "remote-exec" {
    scripts = [
      "./deploy/scripts/install-docker.sh",
      "./deploy/scripts/pull-common-images.sh"
    ]
  }
}

resource "aws_spot_instance_request" "wavemesa3" {
  ami           = "ami-a4827dc9"
  spot_price    = "${var.spot_price}"
  spot_price    = "0.4"
  instance_type = "m3.xlarge"
  block_duration_minutes = 360
  tags {
    Name = "wavemesa3"
  }

  security_groups = ["${aws_security_group.gdcluster.name}"]

  provisioner "remote-exec" {
    scripts = [
      "./deploy/scripts/install-docker.sh",
      "./deploy/scripts/pull-common-images.sh"
    ]
  }
}

resource "aws_spot_instance_request" "wavemesa4" {
  ami           = "ami-a4827dc9"
  spot_price    = "${var.spot_price}"
  spot_price    = "0.4"
  instance_type = "m3.xlarge"
  block_duration_minutes = 360
  tags {
    Name = "wavemesa4"
  }

  security_groups = ["${aws_security_group.gdcluster.name}"]

  provisioner "remote-exec" {
    scripts = [
      "./deploy/scripts/install-docker.sh",
      "./deploy/scripts/pull-common-images.sh"
    ]
  }
}

