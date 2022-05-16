terraform {
  required_providers {
    tls = {
      source = "hashicorp/tls"
      version = ">= 3.1.0"
    }
  }
  required_version = ">= 0.15.1"
}

module "easy-certificates" {
  source = "../"

  certificate_authority = {
    common_name = "gdp.allianz"
    country = "DE"
    locality = "Munich"
    organization = "Allianz"
    unit = "GDP"
    validity = 87600 # 10 Years
  }

  server_certificates = {
      server0 = {
        common_name = "server0"
        country = "HU"
        locality = "Budapest"
        organization = "LederWorks"
        unit = "IaC"
        validity = 8760
      }

      server1 = {
        common_name = "server1"
        country = "DE"
        locality = "Munich"
        organization = "Allianz"
        unit = "GDP"
        validity = 8760
      }

      server2 = {
        common_name = "server2"
      }
  }

}

