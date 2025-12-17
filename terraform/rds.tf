resource "aws_db_subnet_group" "default" {
  name       = "vaishnavi-strapi-db-subnet"
  subnet_ids = data.aws_subnets.public.ids
}

resource "aws_db_instance" "postgres" {
  identifier             = "vaishnavi-strapi-postgres"
  engine                 = "postgres"
  engine_version         = "15"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20

  db_name  = "strapi"
  username = var.db_username
  password = var.db_password

  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.default.name

  backup_retention_period = 7
  skip_final_snapshot     = true
}
