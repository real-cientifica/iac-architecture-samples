#Provisionando a subnet
resource "oci_core_subnet" "test_subnet" {
    availability_domain = data.oci_identity_availability_domain.dominio_disponivel.name
    cidr_block = var.ip_subnet
    display_name = var.nome_subnet
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.teste_vcn.id
    route_table_id = oci_core_vcn.teste_vcn.default_route_table_id
    security_list_ids = [oci_core_vcn.teste_vcn.default_security_list_id]
    dhcp_options_id = oci_core_vcn.teste_vcn.default_dhcp_options_id
    dns_label = var.descricao_subnet
}