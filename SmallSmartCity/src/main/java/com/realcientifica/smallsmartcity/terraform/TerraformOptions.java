package com.realcientifica.smallsmartcity.terraform;
/**
 *
 * @author jeanj
 */
public class TerraformOptions {
    private String vm_shape, api_fingerprint, api_private_key_path, tenancy_id, user_id, region, compartment_id, ssh_public_key;

    public String getVm_shape() {
        return vm_shape;
    }

    public void setVm_shape(String vm_shape) {
        this.vm_shape = vm_shape;   
    }

    public String getApi_fingerprint() {
        return api_fingerprint;
    }

    public void setApi_fingerprint(String api_fingerprint) {
        this.api_fingerprint = api_fingerprint;
    }

    public String getApi_private_key_path() {
        return api_private_key_path;
    }

    public void setApi_private_key_path(String api_private_key_path) {
        this.api_private_key_path = api_private_key_path;
    }

    public String getTenancy_id() {
        return tenancy_id;
    }

    public void setTenancy_id(String tenancy_id) {
        this.tenancy_id = tenancy_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getCompartment_id() {
        return compartment_id;
    }

    public void setCompartment_id(String compartment_id) {
        this.compartment_id = compartment_id;
    }

    public String getSsh_public_key() {
        return ssh_public_key;
    }

    public void setSsh_public_key(String ssh_public_key) {
        this.ssh_public_key = ssh_public_key;
    }

}