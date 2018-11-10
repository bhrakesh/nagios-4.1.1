resource "aws_elb" "web" {
  name = "terraform-example-elb"

  subnets         = ["${aws_subnet.PublicAZA.id}"]
  security_groups = ["${aws_security_group.FrontEnd.id}"]
  instances       = ["${aws_instance.terrform_instance.id}"]

  listener = [ 
   {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  },
   {
      instance_port     = "8080"
      instance_protocol = "HTTP"
      lb_port           = "8080"
      lb_protocol       = "HTTP"
    },
  ]
   health_check = [
    {
      target              = "HTTP:80/"
      interval            = 30
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout             = 5
    },
  ]
}
