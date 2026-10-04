project_id      = "my-gcp-project"
region          = "us-central1"
role_id         = "customViewer"
role_title      = "Custom Viewer"
role_description = "Custom role with limited view permissions"
permissions     = [
  "resourcemanager.projects.get",
  "resourcemanager.projects.list",
  "compute.instances.get",
  "compute.instances.list"
]
