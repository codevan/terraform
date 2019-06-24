# ____         _
#|    \ _  __ | |  _
#| ||  | |/__\| | / /
#|    /| | |  | |/ /
#| |\ \| | |__| |\ \
#|_| \_|_|\__/|_| \_\
resource "azurerm_resource_group" "TerraLAB" {
   location = "UK South"
   name = "Rick-LAB"

   tags = {
    Environment = "Lab" #"Production"
    #BusinessOwner = ""
    Purpose = "Learning"
    #CreatedBy = "bob"
    creationSource = "Terraform"
   }
}
resource "azurerm_virtual_network" "red_virtual_network" {
    location  = "${azurerm_resource_group.TerraLAB.location}"
    name = "redvirtnet"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "${azurerm_resource_group.TerraLAB.name}"
    dns_servers = ["10.0.0.4","10.0.0.5"]
    

    subnet {
      name = "subnet1"
      address_prefix = "10.0.1.0/24"
    }

    subnet {
      name = "subnet2"
      address_prefix = "10.0.2.0/24"
    }

    #tags {
    #  Environment = "${azurerm_resource_group.TerraLAB.tags.Environment}"
    #  Purpose = "${azurerm_resource_group.TerraLAB.tags.Purpose}"
    #  #CreatedBy = ""
    #}

}


