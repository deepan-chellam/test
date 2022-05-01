

resource "aws_db_subnet_group" "my_dbsubnetgrp" {
        name = "${var.env}-rds-secgrp"
        subnet_ids = ["${var.in_private_subnetid[2]}" , "${var.in_private_subnetid[3]}"]

        tags = {
        Name = "${var.env}-dbsubnetgrp"
        }
}

#provision the database
resource "aws_db_instance" "my_rds_instance" {
            count = var.in_total_rds_instances
            instance_class = var.in_dbinstancetype
            allocated_storage = 20
            engine = "mysql"
            name = "${var.env}_demo_db"
            username = var.in_dbusername
            password = var.in_dbpassword
            skip_final_snapshot = true
            db_subnet_group_name = "${aws_db_subnet_group.my_dbsubnetgrp.name}"

            vpc_security_group_ids = var.in_secgrpid_rds

            tags = {
                Name = "${var.env}-db-rdsinstance-${count.index}"
                }

            # lifecycle {
            # ignore_changes = ["engine", "auto_minor_version_upgrade", "vpc_security_group_ids"]
            # }

}





