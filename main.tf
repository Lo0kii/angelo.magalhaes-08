terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "~> 2.0"
    }
  }
}

provider "vultr" {
  api_key = "SILLVA2A6J3F6S4SKKSNXAPFNZFMWNFF2MRA"

}
resource "vultr_instance" "wordpress" {
  plan   = "vc2-1c-1gb"
  region = "fra"
  os_id  = 387

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y docker.io
              systemctl start docker
              systemctl enable docker
              docker pull wordpress
              docker network create wordpress_network
              docker run --name wordpress-db -e MYSQL_ROOT_PASSWORD=ace.a.tuer.un.corsaire -e MYSQL_DATABASE=wordpress -d mysql:5.7
              docker run --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=ace.a.tuer.un.corsaire -e WORDPRESS_DB_NAME=wordpress -p 80:80 -d wordpress
            EOF
}
