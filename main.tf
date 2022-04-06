# declaring module for elasticsearch (from cloudposse)
# https://github.com/cloudposse/terraform-aws-elasticsearch/tree/0.35.1

module "elasticsearch" {
  source = "cloudposse/elasticsearch/aws"
  # Cloud Posse recommends pinning every module to a specific version
  version     = "0.35.1"
  name                    = "${var.environment}-${var.project}-es"
  security_groups         = [aws_security_group.es.id]
  vpc_id                  = var.vpc_id
  subnet_ids              = var.subnet_ids
  zone_awareness_enabled  = var.zone_awareness_enabled
  elasticsearch_version   = var.elasticsearch_version
  instance_type           = var.instance_type
  instance_count          = var.instance_count
  encrypt_at_rest_enabled = var.encrypt_at_rest_enabled
  ebs_volume_size         = var.ebs_volume_size
  automated_snapshot_start_hour = var.automated_snapshot_start_hour
}

# create a security group on the fly to attach to elasticsearch
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

resource "aws_security_group" "es" {
  name        = "${var.environment}-${var.project}-es-sg"
  description = "Allow xxxyyy traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.sg_ingress_from_port
    to_port     = var.sg_ingress_to_port
    protocol    = var.sg_ingress_protocol
    cidr_blocks = var.s
  }

  egress {
    from_port   = var.sg_egress_from_port
    to_port     = var.sg_egress_to_port
    protocol    = var.sg_egress_protocol
    cidr_blocks = var.sg_egress_cidr_blocks
  }
}
