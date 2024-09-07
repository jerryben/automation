jerry@zerone:~/DevDir/terraform/gcp$ terraform apply -auto-approve
data.google_compute_subnetwork.subnet1: Reading...
data.google_compute_network.vpc_network: Reading...
data.google_compute_instance.vm2: Reading...
data.google_compute_subnetwork.subnet2: Reading...
data.google_compute_instance.vm1: Reading...
data.google_sql_database_instance.mysql_db: Reading...
data.google_sql_database_instance.mysql_db: Read complete after 1s [id=hipaa-database]
data.google_compute_network.vpc_network: Read complete after 1s [id=projects/supple-nature-430608-h9/global/networks/hipaa-vpc]
data.google_compute_instance.vm1: Read complete after 2s [id=projects/supple-nature-430608-h9/zones/us-central1-c/instances/hipaa-frontend-vm]
data.google_compute_subnetwork.subnet2: Read complete after 2s [id=projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hipaa-backend]
data.google_compute_subnetwork.subnet1: Read complete after 2s [id=projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hippa-frontend]
data.google_compute_instance.vm2: Read complete after 3s [id=projects/supple-nature-430608-h9/zones/us-central1-f/instances/hipaa-backend-vm]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

mysql_db_info = {
  "available_maintenance_versions" = tolist([])
  "clone" = tolist(null) /* of object */
  "connection_name" = "supple-nature-430608-h9:us-central1:hipaa-database"
  "database_version" = "MYSQL_8_0_31"
  "deletion_protection" = tobool(null)
  "dns_name" = ""
  "encryption_key_name" = tostring(null)
  "first_ip_address" = "10.58.240.3"
  "id" = "hipaa-database"
  "instance_type" = "CLOUD_SQL_INSTANCE"
  "ip_address" = tolist([
    {
      "ip_address" = "10.58.240.3"
      "time_to_retire" = ""
      "type" = "PRIVATE"
    },
  ])
  "maintenance_version" = "MYSQL_8_0_31.R20240527.01_12"
  "master_instance_name" = ""
  "name" = "hipaa-database"
  "private_ip_address" = "10.58.240.3"
  "project" = "supple-nature-430608-h9"
  "psc_service_attachment_link" = ""
  "public_ip_address" = ""
  "region" = "us-central1"
  "replica_configuration" = tolist([])
  "restore_backup_context" = tolist(null) /* of object */
  "root_password" = tostring(null)
  "self_link" = "https://sqladmin.googleapis.com/sql/v1beta4/projects/supple-nature-430608-h9/instances/hipaa-database"
  "server_ca_cert" = tolist([
    {
      "cert" = <<-EOT
      -----BEGIN CERTIFICATE-----
      MIIDfzCCAmegAwIBAgIBADANBgkqhkiG9w0BAQsFADB3MS0wKwYDVQQuEyRiNGYw
      ZjE2OS0xNDkwLTQ2ODItYTNmNi04NzcyMzg4MDFhZGYxIzAhBgNVBAMTGkdvb2ds
      ZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUsIEluYzELMAkG
      A1UEBhMCVVMwHhcNMjQwODI3MTUyNjQxWhcNMzQwODI1MTUyNzQxWjB3MS0wKwYD
      VQQuEyRiNGYwZjE2OS0xNDkwLTQ2ODItYTNmNi04NzcyMzg4MDFhZGYxIzAhBgNV
      BAMTGkdvb2dsZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUs
      IEluYzELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
      AQDg/LvkCi3ojZzV0rEakx/uUX5XwXxWGzxaE6rFOvM0c8kFyKVGv4z0HSxpLck3
      kmlcgQQHe/gJhnsPDsZiBv/eGX/FZlLxXaMx4kW07hZDl/YjlsyvKm6yUH7hOKgl
      N4F5nNYV1pN9F6mwkfaIotQm0VcFc9BLbFrNIbve2f54J0L+ahDkPs5m8WUE/TSG
      W/7iCHmSsLZ+eoLb9SjgDnhksGJ0CuaNbSSPkflZBbB3UONMb5EUgEo/Y9mZvv4H
      PAysye/a30Y9RI71jS/YKyNZf6hXHa0yo/Z9MYnNGmn6SoA1k38HE4dzBVzm6xIp
      gmwcAJzHVEJTb+FODOGHHhWRAgMBAAGjFjAUMBIGA1UdEwEB/wQIMAYBAf8CAQAw
      DQYJKoZIhvcNAQELBQADggEBANnBN3lW8V0UBGJwWT7ws1MlmljjH5Yvw2+MKvM8
      UAkIZYQBhSas7WBLcWqLHNrfPcWXbIO0kvB87b72EFJZ4xqhhJNeTcZbJ0hRgCM5
      jbppaNg10QZ58rw+Va7X0xYmykGv6wOKbEuA4Wupai986+i4VgIU7UTHAP8gtau9
      YWnnG6kCt9nkQ6Ph9Q4EYTOM8vL2n3sryx3d4UDxc1k6fd3TJUxujWcAPdY7x7yJ
      eFM2wAXFAaEWevDaedbwNt3YkzWc01EUQg9M+dmfWm/ZI0msXtEoM70YIx4jGjI8
      0n8QGy9MJYbloU+t5h3iFcFDXxQUxzts7jD4MUDw1zSfjn8=
      -----END CERTIFICATE-----
      EOT
      "common_name" = "C=US,O=Google\\, Inc,CN=Google Cloud SQL Server CA,dnQualifier=b4f0f169-1490-4682-a3f6-877238801adf"
      "create_time" = "2024-08-27T15:26:41.160Z"
      "expiration_time" = "2034-08-25T15:27:41.160Z"
      "sha1_fingerprint" = "6bfbf52d14ff3cb30abe8b024247e98db42dd1ff"
    },
  ])
  "service_account_email_address" = "p1027569473457-cikvzq@gcp-sa-cloud-sql.iam.gserviceaccount.com"
  "settings" = tolist([
    {
      "activation_policy" = "NEVER"
      "active_directory_config" = tolist([])
      "advanced_machine_features" = tolist([])
      "availability_type" = "ZONAL"
      "backup_configuration" = tolist([
        {
          "backup_retention_settings" = tolist([
            {
              "retained_backups" = 7
              "retention_unit" = "COUNT"
            },
          ])
          "binary_log_enabled" = true
          "enabled" = true
          "location" = "us"
          "point_in_time_recovery_enabled" = false
          "start_time" = "05:00"
          "transaction_log_retention_days" = 7
        },
      ])
      "collation" = ""
      "connector_enforcement" = "NOT_REQUIRED"
      "data_cache_config" = tolist([])
      "database_flags" = toset([])
      "deletion_protection_enabled" = false
      "deny_maintenance_period" = tolist([])
      "disk_autoresize" = true
      "disk_autoresize_limit" = 0
      "disk_size" = 10
      "disk_type" = "PD_SSD"
      "edition" = "ENTERPRISE"
      "enable_dataplex_integration" = false
      "enable_google_ml_integration" = false
      "insights_config" = tolist([
        {
          "query_insights_enabled" = false
          "query_plans_per_minute" = 0
          "query_string_length" = 0
          "record_application_tags" = false
          "record_client_address" = false
        },
      ])
      "ip_configuration" = tolist([
        {
          "allocated_ip_range" = ""
          "authorized_networks" = toset([])
          "enable_private_path_for_google_cloud_services" = false
          "ipv4_enabled" = false
          "private_network" = "projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
          "psc_config" = toset([])
          "server_ca_mode" = "GOOGLE_MANAGED_INTERNAL_CA"
          "ssl_mode" = "ALLOW_UNENCRYPTED_AND_ENCRYPTED"
        },
      ])
      "location_preference" = tolist([
        {
          "follow_gae_application" = ""
          "secondary_zone" = ""
          "zone" = "us-central1-c"
        },
      ])
      "maintenance_window" = tolist([
        {
          "day" = 0
          "hour" = 0
          "update_track" = "canary"
        },
      ])
      "password_validation_policy" = tolist([])
      "pricing_plan" = "PER_USE"
      "sql_server_audit_config" = tolist([])
      "tier" = "db-custom-1-3840"
      "time_zone" = ""
      "user_labels" = tomap({})
      "version" = 24
    },
  ])
}
subnet1_info = {
  "description" = "Holds the frontend application for Hipaa"
  "gateway_address" = "10.10.20.1"
  "id" = "projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hippa-frontend"
  "internal_ipv6_prefix" = ""
  "ip_cidr_range" = "10.10.20.0/24"
  "name" = "hippa-frontend"
  "network" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
  "private_ip_google_access" = false
  "project" = "supple-nature-430608-h9"
  "region" = "us-central1"
  "secondary_ip_range" = tolist([])
  "self_link" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hippa-frontend"
}
subnet2_info = {
  "description" = "Holds the backend application for Hipaa"
  "gateway_address" = "10.10.10.1"
  "id" = "projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hipaa-backend"
  "internal_ipv6_prefix" = ""
  "ip_cidr_range" = "10.10.10.0/24"
  "name" = "hipaa-backend"
  "network" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
  "private_ip_google_access" = false
  "project" = "supple-nature-430608-h9"
  "region" = "us-central1"
  "secondary_ip_range" = tolist([])
  "self_link" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hipaa-backend"
}
vm1_info = {
  "advanced_machine_features" = tolist(null) /* of object */
  "allow_stopping_for_update" = tobool(null)
  "attached_disk" = tolist([])
  "boot_disk" = tolist([
    {
      "auto_delete" = true
      "device_name" = "hipaa-frontend-vm"
      "disk_encryption_key_raw" = ""
      "disk_encryption_key_sha256" = ""
      "initialize_params" = tolist([
        {
          "enable_confidential_compute" = false
          "image" = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240808"
          "labels" = tomap({})
          "provisioned_iops" = 0
          "provisioned_throughput" = 0
          "resource_manager_tags" = tomap({})
          "size" = 10
          "storage_pool" = ""
          "type" = "pd-balanced"
        },
      ])
      "kms_key_self_link" = ""
      "mode" = "READ_WRITE"
      "source" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/zones/us-central1-c/disks/hipaa-frontend-vm"
    },
  ])
  "can_ip_forward" = false
  "confidential_instance_config" = tolist(null) /* of object */
  "cpu_platform" = "Unknown CPU Platform"
  "current_status" = "TERMINATED"
  "deletion_protection" = false
  "description" = tostring(null)
  "desired_status" = tostring(null)
  "effective_labels" = tomap(null) /* of string */
  "enable_display" = false
  "guest_accelerator" = tolist([])
  "hostname" = tostring(null)
  "id" = "projects/supple-nature-430608-h9/zones/us-central1-c/instances/hipaa-frontend-vm"
  "instance_id" = "1359769310224181232"
  "label_fingerprint" = "42WmSpB8rSM="
  "labels" = tomap({})
  "machine_type" = "e2-small"
  "metadata" = tomap({
    "ssh-keys" = "jerrybenoc:ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBADiGg+311dDklhkXtzXGD28o3ANZY0pfbpG4erU6YUf4HaANpxDpFrHrCs8BKDT90Qn/4upEa+spR5gGIInOMox1gGp37OxWyD2MVCkpsEQ/Ur7ArRL5R3sfJf4RDvD78+T7hKOxKQuQltIBxjn7mNo4oy4uDi52vTgKQ74NZfBEREz4Q== jerrybenoc@gmail.com"
  })
  "metadata_fingerprint" = "LZMKcBas0mI="
  "metadata_startup_script" = tostring(null)
  "min_cpu_platform" = ""
  "name" = "hipaa-frontend-vm"
  "network_interface" = tolist([
    {
      "access_config" = tolist([
        {
          "nat_ip" = "35.209.220.228"
          "network_tier" = "STANDARD"
          "public_ptr_domain_name" = ""
        },
      ])
      "alias_ip_range" = tolist([])
      "internal_ipv6_prefix_length" = 0
      "ipv6_access_config" = tolist([])
      "ipv6_access_type" = ""
      "ipv6_address" = ""
      "name" = "nic0"
      "network" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
      "network_ip" = "10.10.20.2"
      "nic_type" = ""
      "queue_count" = 0
      "stack_type" = "IPV4_ONLY"
      "subnetwork" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hippa-frontend"
      "subnetwork_project" = "supple-nature-430608-h9"
    },
  ])
  "network_performance_config" = tolist(null) /* of object */
  "params" = tolist(null) /* of object */
  "project" = "supple-nature-430608-h9"
  "reservation_affinity" = tolist(null) /* of object */
  "resource_policies" = tolist(null) /* of string */
  "scheduling" = tolist([
    {
      "automatic_restart" = true
      "instance_termination_action" = ""
      "local_ssd_recovery_timeout" = tolist([])
      "max_run_duration" = tolist([])
      "min_node_cpus" = 0
      "node_affinities" = toset([])
      "on_host_maintenance" = "MIGRATE"
      "on_instance_stop_action" = tolist([])
      "preemptible" = false
      "provisioning_model" = "STANDARD"
    },
  ])
  "scratch_disk" = tolist([])
  "self_link" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/zones/us-central1-c/instances/hipaa-frontend-vm"
  "service_account" = tolist([
    {
      "email" = "1027569473457-compute@developer.gserviceaccount.com"
      "scopes" = toset([
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring.write",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append",
      ])
    },
  ])
  "shielded_instance_config" = tolist([
    {
      "enable_integrity_monitoring" = true
      "enable_secure_boot" = true
      "enable_vtpm" = true
    },
  ])
  "tags" = toset([
    "hipaa-frontend",
  ])
  "tags_fingerprint" = "MBRa_zFCJ50="
  "terraform_labels" = tomap({})
  "zone" = "us-central1-c"
}
vm2_info = {
  "advanced_machine_features" = tolist(null) /* of object */
  "allow_stopping_for_update" = tobool(null)
  "attached_disk" = tolist([])
  "boot_disk" = tolist([
    {
      "auto_delete" = true
      "device_name" = "hipaa-backend-vm"
      "disk_encryption_key_raw" = ""
      "disk_encryption_key_sha256" = ""
      "initialize_params" = tolist([
        {
          "enable_confidential_compute" = false
          "image" = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240808"
          "labels" = tomap({})
          "provisioned_iops" = 0
          "provisioned_throughput" = 0
          "resource_manager_tags" = tomap({})
          "size" = 10
          "storage_pool" = ""
          "type" = "pd-balanced"
        },
      ])
      "kms_key_self_link" = ""
      "mode" = "READ_WRITE"
      "source" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/zones/us-central1-f/disks/hipaa-backend-vm"
    },
  ])
  "can_ip_forward" = false
  "confidential_instance_config" = tolist(null) /* of object */
  "cpu_platform" = "Unknown CPU Platform"
  "current_status" = "TERMINATED"
  "deletion_protection" = false
  "description" = tostring(null)
  "desired_status" = tostring(null)
  "effective_labels" = tomap(null) /* of string */
  "enable_display" = false
  "guest_accelerator" = tolist([])
  "hostname" = tostring(null)
  "id" = "projects/supple-nature-430608-h9/zones/us-central1-f/instances/hipaa-backend-vm"
  "instance_id" = "7094512014388642446"
  "label_fingerprint" = "vQHfasn4SFs="
  "labels" = tomap({
    "goog-ops-agent-policy" = "v2-x86-template-1-3-0"
  })
  "machine_type" = "e2-small"
  "metadata" = tomap({
    "enable-osconfig" = "TRUE"
    "ssh-keys" = <<-EOT
    jerrybenoc:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBA5sYYMiG3qqqdJSd3x0ZqdY6uWZexCAVlwnE96dxFZjoF5X+GAnwdJANCEebbcknpAcZAETyGXrKIYtG1AtqC4= jerrybenoc@gmail.com
    gcpadmin:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBPfMiB/lxxhCQXcoaKNEnOPTiTWB6jN9Grxt/ix0GEcyPp+q4s4dFiKwzeNpMlLilQiRaBx7pUFeN6xrXaH4m+g= google-ssh {"userName":"gcpadmin@zeronedigitals.store","expireOn":"2024-09-05T20:06:54+0000"}
    gcpadmin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAF2mQMTQmQ5gkmJ5zZ4q/mZfF24EAx9rOBkOTr8Xlbyi4GfjClZXfNFD6JwfcEbwTkO1ZeqAMmviHyZtUto2M9rLtlnfpZGbiMNEu3eimz7BlKn9gAJJDhv/3t8nhtUBxSzr554Mxng4/PHejgyzQGYFmRnhqIzu2lYDQU9tun69WrwQFItPuTGKiuu78yO8Qi14pEBl16c4vhU9cyPpjV9neIP47HP3EXCEQTSXzH4YeHjl0in1xVus+wItcm/XyDIe6rTVBTHe0p470vcdx+Ob7DLkdHCWdKIJngi8Ea8d6JYXRh9MHePXKXnhfVLV29FOsM516jxrK/omsOBe+U8= google-ssh {"userName":"gcpadmin@zeronedigitals.store","expireOn":"2024-09-05T20:07:00+0000"}
    EOT
  })
  "metadata_fingerprint" = "-3tzSJm3874="
  "metadata_startup_script" = tostring(null)
  "min_cpu_platform" = ""
  "name" = "hipaa-backend-vm"
  "network_interface" = tolist([
    {
      "access_config" = tolist([
        {
          "nat_ip" = ""
          "network_tier" = "STANDARD"
          "public_ptr_domain_name" = ""
        },
      ])
      "alias_ip_range" = tolist([])
      "internal_ipv6_prefix_length" = 0
      "ipv6_access_config" = tolist([])
      "ipv6_access_type" = ""
      "ipv6_address" = ""
      "name" = "nic0"
      "network" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
      "network_ip" = "10.10.10.2"
      "nic_type" = ""
      "queue_count" = 0
      "stack_type" = "IPV4_ONLY"
      "subnetwork" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hipaa-backend"
      "subnetwork_project" = "supple-nature-430608-h9"
    },
  ])
  "network_performance_config" = tolist(null) /* of object */
  "params" = tolist(null) /* of object */
  "project" = "supple-nature-430608-h9"
  "reservation_affinity" = tolist(null) /* of object */
  "resource_policies" = tolist(null) /* of string */
  "scheduling" = tolist([
    {
      "automatic_restart" = true
      "instance_termination_action" = ""
      "local_ssd_recovery_timeout" = tolist([])
      "max_run_duration" = tolist([])
      "min_node_cpus" = 0
      "node_affinities" = toset([])
      "on_host_maintenance" = "MIGRATE"
      "on_instance_stop_action" = tolist([])
      "preemptible" = false
      "provisioning_model" = "STANDARD"
    },
  ])
  "scratch_disk" = tolist([])
  "self_link" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/zones/us-central1-f/instances/hipaa-backend-vm"
  "service_account" = tolist([
    {
      "email" = "1027569473457-compute@developer.gserviceaccount.com"
      "scopes" = toset([
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring.write",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append",
      ])
    },
  ])
  "shielded_instance_config" = tolist([
    {
      "enable_integrity_monitoring" = true
      "enable_secure_boot" = true
      "enable_vtpm" = true
    },
  ])
  "tags" = toset([
    "hipaa-backend",
  ])
  "tags_fingerprint" = "Rrqm9nnpZ5w="
  "terraform_labels" = tomap({
    "goog-ops-agent-policy" = "v2-x86-template-1-3-0"
  })
  "zone" = "us-central1-f"
}
vpc_network_info = {
  "description" = "VPC for frontend and backend"
  "gateway_ipv4" = ""
  "id" = "projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
  "internal_ipv6_range" = ""
  "name" = "hipaa-vpc"
  "project" = tostring(null)
  "self_link" = "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/global/networks/hipaa-vpc"
  "subnetworks_self_links" = tolist([
    "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hipaa-backend",
    "https://www.googleapis.com/compute/v1/projects/supple-nature-430608-h9/regions/us-central1/subnetworks/hippa-frontend",
  ])
}