#Provisionando a route table da vcn
resource "oci_core_default_route_table" "default_route_table"{
    manage_default_resource_id = oci_core_vcn.teste_vcn.default_route_table_id
    display_name = var.nome_route_table

    route_rules {
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
    }
}