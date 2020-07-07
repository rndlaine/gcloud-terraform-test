provider "google" {
  version = "3.5.0"
  region  = var.region
}

resource "random_id" "id" {
  byte_length = 4
  prefix      = var.project_name
}

# Creates a gcp project
resource "google_project" "project" {
  provider   = google-beta
  name       = var.project_name
  org_id     = var.org_id
  project_id = random_id.id.hex
}

# Enables cloud resource manager api
resource "google_project_service" "cloud_resource_manager" {
  project = google_project.project.project_id
  service = "cloudresourcemanager.googleapis.com"
}

# Enables compute engine
resource "google_project_service" "compute" {
  project = google_project.project.project_id
  service = "compute.googleapis.com"
}

# Enables firebase
resource "google_firebase_project" "firebase" {
  provider = google-beta
  project  = google_project.project.project_id
}

# Enables firestore
resource "google_project_service" "firestore" {
  project = google_project.project.project_id
  service = "firestore.googleapis.com"
}
