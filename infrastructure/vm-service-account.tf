resource "google_service_account" "vm-service-account" {
  account_id = "vm-service-account"
}

resource "google_project_iam_binding" "vm-service-account-iam" {
  project = "reference-yen-348420"
  role    = "roles/container.admin"
  members = [
    "serviceAccount:${google_service_account.vm-service-account.email}",
  ]
}