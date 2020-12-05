#Pegando os dominios disponiveis
data "oci_identity_availability_domain" "dominio_disponivel" {
    compartment_id = var.tenancy_id
    ad_number = 1
}