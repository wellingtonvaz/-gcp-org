/******************************************
  Environment Folder
*****************************************/

resource "google_folder" "env" {
  display_name = "${local.folder_prefix}-${var.env}"
  parent       = local.parent
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [google_folder.env]

  destroy_duration = "30s"
}