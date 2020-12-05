#Provisionando a instancia linux
resource "oci_core_instance" "instancia_teste" {
    #Definindo o dominio
    availability_domain = data.oci_identity_availability_domain.dominio_disponivel.name
    #Definindo o compartimento
    compartment_id = var.compartment_id
    #Definindo o nome da instancia
    display_name = var.nome_instancia
    #Selecionando o shape
    shape = var.vm_shape
    #Selecionando a imagem
    source_details{
        source_type = "image"
        source_id = var.instance_image_ocid[var.sistema_operacional]
    }
    #Selecionando a subnet
    create_vnic_details{
        subnet_id = oci_core_subnet.test_subnet.id
        hostname_label = "EtiquetaVNIC" #É tipo uma etiqueta para identificar a VNIC
        nsg_ids = [oci_core_network_security_group.test_network_security_group.id]
    }
    #Adicionando a public key ssh
    metadata = {
        ssh_authorized_keys = var.ssh_public_key
    }
    #Definindo tempo maximo para criação, se não provisionar em 60 minutos ele cancela
    timeouts {
        create = "60m"
    }
}
