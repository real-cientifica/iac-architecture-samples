#Retorna o public ip da instancia criada
output "dominio_disponivel"{
    value = data.oci_identity_availability_domain.dominio_disponivel.name
}


output "lista_de_instancias"{
    value = data.oci_core_instances.test_instances
}