#Provisiona o network security para vcn
resource "oci_core_network_security_group" "test_network_security_group"{
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.teste_vcn.id
    display_name = var.nome_network_security_group
}