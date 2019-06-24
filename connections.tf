# ____          __
#|    \ __  __ | |  __
#| ||  | |/ __\| | / /
#|    /| | |  | |/ /
#| |\ \| | |__| |\ \
#|_| \_|_|\__/|_| \_\
# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  #credetials = "${file("../account.json")}"  
  #subscription_id = "${var.subscription_id}"    
  #client_id = "1" #"${var.client_id}"
  #client_secret = "2" #"${var.client_secret}"
  #tenant_id = "${var.tenant_id}"
  version = "=1.30.1"   # get version from here: https://github.com/terraform-providers/terraform-provider-azurerm/blob/master/CHANGELOG.md
}
	
# note the following can be set in the .bashrc or environment vars to access per above 
/*
Export TF_VAR_subscription_id = ""
Export TF_VAR_client_id = ""
Export TF_VAR_client_secret = ""
Export TF_VAR_tenant_id = ""
*/
#variable subscription_id {} 
#variable tenant_id {}
