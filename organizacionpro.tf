provider "google" {
  credentials = file("<path-to-your-service-account-key>.json")
  project     = "<organization-id>"
  region      = "us-central1"
}

resource "google_organization" "orgprueba" {
  org_id = "<organization-id>" # Aquí colocas el ID de tu organización
}

resource "google_project" "proyecto1" {
  name       = "proyecto1"
  project_id = "proyecto1-id"
  org_id     = google_organization.orgprueba.org_id
  billing_account = "<billing-account-id>"  # ID de cuenta de facturación
}

resource "google_project" "proyecto2" {
  name       = "proyecto2"
  project_id = "proyecto2-id"
  org_id     = google_organization.orgprueba.org_id
  billing_account = "<billing-account-id>"  # ID de cuenta de facturación
}
