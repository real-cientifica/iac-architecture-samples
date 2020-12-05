#Retorna o public ip da instancia criada
output "primary_ip"{
    value = data.oci_identity_availability_domain.dominio_disponivel.name
}