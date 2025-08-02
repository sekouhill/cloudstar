# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "app01" {
   name         = "appo1-template-terraform"
   description  = "This template is used to clone lizzo"
   machine_type = "e2-medium"
   region       = "us-central1"

   # Create a new disk from an image and set as default boot disk
   disk {
     source_image = "debian-cloud/debian-12"
     boot         = true
   }

   # Network configurations  
   network_interface {
     subnetwork = google_compute_subnetwork.hqinternal.id
     /*access_config {
       # Include this section to give the VM an external IP address
     } */
   }

   # Use file() to get shell script for startup script argument
   metadata_startup_script = file("./startup.sh")
 }
