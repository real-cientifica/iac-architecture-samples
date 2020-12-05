variable "api_fingerprint"{
  type =string
  default = "c0:f5:9e:e6:60:22:f7:dd:f4:86:fc:e5:04:6d:c2:a5"
}


variable "api_private_key_path"{
  type =string
  default ="C:/Users/jeanj/.oci/oci_api_key.pem"
}

variable "tenancy_id"{
  type =string
  default ="ocid1.tenancy.oc1..aaaaaaaa2nsrzgo3cgfshvdyrt7pwxa5sv2jfk5ztfmsq55fwive3xk7emrq"
}

variable "user_id"{
  type =string
  default ="ocid1.user.oc1..aaaaaaaad5dxjau47ruu4aju2lt5ekbro7scv67xh42pmeoaxugvw5yjftyq"
}

variable "compartment_id"{
  type =string
  default ="ocid1.compartment.oc1..aaaaaaaanp7gm5t3o7pgllca7n6t3lqm3mvpdkmgp54nkqggah3ej7wiyrcq"
}

variable "ssh_public_key"{
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA5emHiAB++bnqlo2dFfxLm7W8LkfYXTBhMOGuEtk5YMNP2alNFD8tJmdOfgwGPmHFfMIarpwWyJXwsOkp//mxeH+JGyiuKrY8Hefu0A2n9C7nmadjNVd/wTWITJ8sgHCnBdDjjG5oQG4QEcsyDY4vOxPOxWmNUql4XuANey5HTwqsI48r70wmD040uDS3RJ72do7Wqz7n65UJjqQFFWfDv3HnS05301WeVEnSXKehi6FDILxoGwjz4d93q1Vs4ZVEtlw1DIsnAeTjIPw6JQnLe3Lopvreqe2ocjJMe2quT8cvzH6amA7Eof8l9CQcCOFiOLtT9Vd8R08iJ4ZpMCE/sw== rsa-key-20201010"
}

variable "region"{
  type =string
  default ="sa-saopaulo-1"
}

#Váriaveis VCN "rede virtual"
variable "nome_vcn"{
  type =string
  default ="VCN teste"
}

variable "descricao_vcn"{ # 1~15 caracteres
  type =string
  default ="exemploVCN"
}

variable "ip_vcn"{
  type =string
  default ="10.1.0.0/16"
}

#Váriaveis Gateway
variable "nome_gateway"{
  type =string
  default ="karokain Internet Gateway"
}

#Váriaveis Network Security Group
variable "nome_network_security_group"{
  type =string
  default ="karokain Network Security Group"
}

#Váriaveis Route Table
variable "nome_route_table"{
  type =string
  default ="karokain Route Table"
}

#Váriaveis a subnet
variable "nome_subnet"{
  type =string
  default ="Subnet Exemplo"
}

variable "descricao_subnet"{ # 1~15 caracteres
  type =string
  default ="descricaosubnet"
}

variable "ip_subnet"{
  type =string
  default ="10.1.1.0/24"
}

#Váriaveis Instancia
variable "nome_instancia"{
  type =string
  default ="Ubuntu"
}

variable "sistema_operacional"{
  type =string
  default ="Ubuntu_20_04"
}

variable "instance_image_ocid"{
  type = map(string)
  default = {
    Linux_8 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaagxoe7cvwkdzrs5ajxoyjhdyyiuuvqs6lovlaguntv6eh2goalliq",
    Ubuntu_20_04 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaaq2wsr7svdybng6j36wwo4rhgbqas4r3futv6ux5jqul3xazglaa",
    CentOS_7 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa6wbujcvvdzq7kn7oadku6ysscxgsoacvcbp2an7cyzuoxlzy3teq",
    Windows_Server_2019_Standard = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaas2lxdy6luxxpic5o23d27k3ojalhxalvjqug3uy632qp2m2epl4q"
  }
}

variable "vm_shape"{
  type =number
  default = 4
}

variable "lista_shape"{
  type = map(string)
  default = {
    1 = "VM.Standard2.2",
    2 = "VM.Standard2.4",
    3 = "VM.Standard2.16",
    4 = "VM.Standard.E2.8"
  }
}