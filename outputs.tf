output "instance_ip" {
  description = "Adresse IP publique de la VM"
  value = vultr_instance.wordpress.main_ip
  
}