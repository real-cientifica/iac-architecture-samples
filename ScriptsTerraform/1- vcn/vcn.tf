#Provisionando uma vcn
resource "oci_core_vcn" "teste_vcn" {
    cidr_block = var.ip_vcn
    compartment_id = var.compartment_id
    display_name = var.nome_vcn
    dns_label = var.descricao_vcn
}