# README

<!-- **Reference**: https://learn.hashicorp.com/terraform/gcp/build

1. A GCP Project: GCP organizes resources into projects. Create one now in the GCP console. You'll need the Project ID later. You can see a list of your projects in the cloud resource manager.

1. Google Compute Engine: You'll need to enable Google Compute Engine for your project. Do so now in the console. Make sure the project you're using to follow this guide is selected and click the "Enable" button.

1. A GCP service account key: Terraform will access your GCP account by using a service account key. Create one now in the console. When creating the key, use the following settings:
    * Select the project you created in the previous step.
    * Under "Service account", select "New service account".
    * Give it any name you like.
    * For the Role, choose "Project -> Editor".
    * Leave the "Key Type" as JSON.
    * Click "Create" to create the key and save the key file to your system.


 -->


1. Run `export GOOGLE_CREDENTIALS=/path/to/credentials.json`
1. Run `setup.sh`