## Copyright © 2021, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "oci-oke" {
  source                        = "github.com/oracle-quickstart/oci-oke"
  tenancy_ocid                  = var.tenancy_ocid
  compartment_ocid              = var.compartment_ocid
  use_existing_vcn              = false
  is_api_endpoint_subnet_public = true # OKE API Endpoint will be public (Internet facing)
  is_lb_subnet_public           = true # OKE LoadBalanacer will be public (Internet facing)
  is_nodepool_subnet_public     = false
  node_shape                    = var.node_pool_shape
  node_ocpus                    = var.node_pool_node_shape_config_ocpus
  node_memory                   = var.node_pool_node_shape_config_memory_in_gbs
  node_count                    = var.num_pool_workers
  node_pool_boot_volume_size_in_gbs  = var.node_pool_boot_volume_size_in_gbs
  k8s_version =  "v1.30.1" 
}

