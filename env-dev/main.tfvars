instances = {
      frontend = {
      ami_id        = "ami-09e6f87a47903347c"
      instance_type = "t3.small"
    }
    mongodb = {
      ami_id        = "ami-09e6f87a47903347c"
      instance_type = "t3.small"
    }
    catalogue = {
      ami_id        = "ami-09e6f87a47903347c"
      instance_type = "t3.micro"
    }

    redis = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  user = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  cart = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  mysql= {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  shipping = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  rabbitmq = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  payment = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  dispatch = {
    ami_id        = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
  }

  }

zone_id = "Z00597101WWGD8AB8PV95"
vpc_security_group_ids = ["sg-025f5fd9e7683454e"]
env = "dev"