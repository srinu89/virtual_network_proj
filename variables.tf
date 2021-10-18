variable "rgname1" {
  
   default = "Test_Rg"
   
}
variable "rglocation1" {
   
   default = "west us"
  
}
variable "vnet_name1" {
  
   default = "Test_Vnet"
    
}
variable "Vnet_address1" {
    
   default =  ["10.0.0.0/16"]
  
}
variable "Subnet_names" {
   
   default =  ["Subnet-1","Subnet-2","Subnet-3"]

}
variable "Subnet_address1" {
   
   default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
 
  
}


# variable "storageactname" {
#    default =  "mystorage65478"
    
# }

# variable "accounttier" {
#    default = "Standard"
 
# }

# variable "actreplytype" {
#    //default = "Standard"
#    default = "ZRS"
   
# }