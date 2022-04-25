terraform {
  cloud {
    organization = "keysoft"

    workspaces {
      name = "playground"
    }
  }
}