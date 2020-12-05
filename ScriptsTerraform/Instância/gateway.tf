#Provisionando o gateway para vcn
resource "oci_core_internet_gateway" "test_internet_gateway" {
    compartment_id = var.compartment_id
    display_name = var.nome_gateway
    vcn_id = oci_core_vcn.teste_vcn.id
}