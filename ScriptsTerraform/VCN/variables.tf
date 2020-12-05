#Dados sensiveis
variable "api_fingerprint"{
  type =string
}


variable "api_private_key_path"{
  type =string
}

variable "tenancy_id"{
  type =string
}

variable "user_id"{
  type =string
}

variable "compartment_id"{
  type =string
}

variable "ssh_public_key"{
  type = string
}

variable "region"{
  type =string
  default ="sa-saopaulo-1"
}

#Váriaveis VCN "rede virtual"
variable "nome_vcn"{
  type =string
}

variable "descricao_vcn"{ #1~15 caracteres
  type =string
  default = var.nome_vcn
}

variable "ip_vcn"{
  type =string
  default ="10.1.0.0/16"
}

#Váriaveis Gateway
variable "nome_gateway"{
  type =string
  default ="Default Internet Gateway"
}

#Váriaveis Network Security Group
variable "nome_network_security_group"{
  type =string
  default ="Default Network Security Group"
}

#Váriaveis Route Table
variable "nome_route_table"{
  type =string
  default ="Default Route Table"
}

#Váriaveis a subnet
variable "nome_subnet"{
  type =string
  default ="Default Subnet"
}

variable "descricao_subnet"{ #1~15 caracteres
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
}

variable "sistema_operacional"{
  type =string
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
  type =string
}