import {
  to = aws_db_instance.rds_db
  id = "database-7-aa"
}

resource "aws_db_instance" "rds_db1" {
    instance_class = "db.t3.micro"
}