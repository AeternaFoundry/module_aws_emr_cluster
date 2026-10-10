variable "emr_clusters" {
  description = <<EOT
Map of emr_clusters, attributes below
Required:
    - name
    - release_label
    - service_role
Optional:
    - additional_info
    - applications
    - autoscaling_role
    - configurations
    - configurations_json
    - custom_ami_id
    - ebs_root_volume_size
    - keep_job_flow_alive_when_no_steps
    - list_steps_states
    - log_encryption_kms_key_id
    - log_uri
    - os_release_label
    - region
    - scale_down_behavior
    - security_configuration
    - step_concurrency_level
    - tags
    - tags_all
    - termination_protection
    - unhealthy_node_replacement
    - visible_to_all_users
    - auto_termination_policy (block):
        - idle_timeout (optional)
    - bootstrap_action (block):
        - args (optional)
        - name (required)
        - path (required)
    - core_instance_fleet (block):
        - instance_type_configs (optional, block):
            - bid_price (optional)
            - bid_price_as_percentage_of_on_demand_price (optional)
            - configurations (optional, block):
                - classification (optional)
                - properties (optional)
            - ebs_config (optional, block):
                - iops (optional)
                - size (required)
                - type (required)
                - volumes_per_instance (optional)
            - instance_type (required)
            - weighted_capacity (optional)
        - launch_specifications (optional, block):
            - on_demand_specification (optional, block):
                - allocation_strategy (required)
            - spot_specification (optional, block):
                - allocation_strategy (required)
                - block_duration_minutes (optional)
                - timeout_action (required)
                - timeout_duration_minutes (required)
        - name (optional)
        - target_on_demand_capacity (optional)
        - target_spot_capacity (optional)
    - core_instance_group (block):
        - autoscaling_policy (optional)
        - bid_price (optional)
        - ebs_config (optional, block):
            - iops (optional)
            - size (required)
            - throughput (optional)
            - type (required)
            - volumes_per_instance (optional)
        - instance_count (optional)
        - instance_type (required)
        - name (optional)
    - ec2_attributes (block):
        - additional_master_security_groups (optional)
        - additional_slave_security_groups (optional)
        - emr_managed_master_security_group (optional)
        - emr_managed_slave_security_group (optional)
        - instance_profile (required)
        - key_name (optional)
        - service_access_security_group (optional)
        - subnet_id (optional)
        - subnet_ids (optional)
    - kerberos_attributes (block):
        - ad_domain_join_password (optional)
        - ad_domain_join_user (optional)
        - cross_realm_trust_principal_password (optional)
        - kdc_admin_password (required)
        - realm (required)
    - master_instance_fleet (block):
        - instance_type_configs (optional, block):
            - bid_price (optional)
            - bid_price_as_percentage_of_on_demand_price (optional)
            - configurations (optional, block):
                - classification (optional)
                - properties (optional)
            - ebs_config (optional, block):
                - iops (optional)
                - size (required)
                - type (required)
                - volumes_per_instance (optional)
            - instance_type (required)
            - weighted_capacity (optional)
        - launch_specifications (optional, block):
            - on_demand_specification (optional, block):
                - allocation_strategy (required)
            - spot_specification (optional, block):
                - allocation_strategy (required)
                - block_duration_minutes (optional)
                - timeout_action (required)
                - timeout_duration_minutes (required)
        - name (optional)
        - target_on_demand_capacity (optional)
        - target_spot_capacity (optional)
    - master_instance_group (block):
        - bid_price (optional)
        - ebs_config (optional, block):
            - iops (optional)
            - size (required)
            - throughput (optional)
            - type (required)
            - volumes_per_instance (optional)
        - instance_count (optional)
        - instance_type (required)
        - name (optional)
    - placement_group_config (block):
        - instance_role (optional)
        - placement_strategy (optional)
    - step (block):
        - action_on_failure (optional)
        - hadoop_jar_step (optional, block):
            - args (optional)
            - jar (optional)
            - main_class (optional)
            - properties (optional)
        - name (optional)
EOT

  type = map(object({
    name                              = string
    release_label                     = string
    service_role                      = string
    termination_protection            = optional(bool)
    tags_all                          = optional(map(string))
    tags                              = optional(map(string))
    step_concurrency_level            = optional(number)
    security_configuration            = optional(string)
    scale_down_behavior               = optional(string)
    region                            = optional(string)
    os_release_label                  = optional(string)
    log_uri                           = optional(string)
    list_steps_states                 = optional(set(string))
    unhealthy_node_replacement        = optional(bool)
    keep_job_flow_alive_when_no_steps = optional(bool)
    ebs_root_volume_size              = optional(number)
    custom_ami_id                     = optional(string)
    configurations_json               = optional(string)
    configurations                    = optional(string)
    autoscaling_role                  = optional(string)
    applications                      = optional(set(string))
    additional_info                   = optional(string)
    log_encryption_kms_key_id         = optional(string)
    visible_to_all_users              = optional(bool)
    auto_termination_policy = optional(object({
      idle_timeout = optional(number)
    }))
    bootstrap_action = optional(list(object({
      args = optional(list(string))
      name = string
      path = string
    })))
    core_instance_fleet = optional(object({
      instance_type_configs = optional(list(object({
        bid_price                                  = optional(string)
        bid_price_as_percentage_of_on_demand_price = optional(number)
        configurations = optional(list(object({
          classification = optional(string)
          properties     = optional(map(string))
        })))
        ebs_config = optional(list(object({
          iops                 = optional(number)
          size                 = number
          type                 = string
          volumes_per_instance = optional(number)
        })))
        instance_type     = string
        weighted_capacity = optional(number)
      })))
      launch_specifications = optional(object({
        on_demand_specification = optional(list(object({
          allocation_strategy = string
        })))
        spot_specification = optional(list(object({
          allocation_strategy      = string
          block_duration_minutes   = optional(number)
          timeout_action           = string
          timeout_duration_minutes = number
        })))
      }))
      name                      = optional(string)
      target_on_demand_capacity = optional(number)
      target_spot_capacity      = optional(number)
    }))
    core_instance_group = optional(object({
      autoscaling_policy = optional(string)
      bid_price          = optional(string)
      ebs_config = optional(list(object({
        iops                 = optional(number)
        size                 = number
        throughput           = optional(number)
        type                 = string
        volumes_per_instance = optional(number)
      })))
      instance_count = optional(number)
      instance_type  = string
      name           = optional(string)
    }))
    ec2_attributes = optional(object({
      additional_master_security_groups = optional(string)
      additional_slave_security_groups  = optional(string)
      emr_managed_master_security_group = optional(string)
      emr_managed_slave_security_group  = optional(string)
      instance_profile                  = string
      key_name                          = optional(string)
      service_access_security_group     = optional(string)
      subnet_id                         = optional(string)
      subnet_ids                        = optional(set(string))
    }))
    kerberos_attributes = optional(object({
      ad_domain_join_password              = optional(string)
      ad_domain_join_user                  = optional(string)
      cross_realm_trust_principal_password = optional(string)
      kdc_admin_password                   = string
      realm                                = string
    }))
    master_instance_fleet = optional(object({
      instance_type_configs = optional(list(object({
        bid_price                                  = optional(string)
        bid_price_as_percentage_of_on_demand_price = optional(number)
        configurations = optional(list(object({
          classification = optional(string)
          properties     = optional(map(string))
        })))
        ebs_config = optional(list(object({
          iops                 = optional(number)
          size                 = number
          type                 = string
          volumes_per_instance = optional(number)
        })))
        instance_type     = string
        weighted_capacity = optional(number)
      })))
      launch_specifications = optional(object({
        on_demand_specification = optional(list(object({
          allocation_strategy = string
        })))
        spot_specification = optional(list(object({
          allocation_strategy      = string
          block_duration_minutes   = optional(number)
          timeout_action           = string
          timeout_duration_minutes = number
        })))
      }))
      name                      = optional(string)
      target_on_demand_capacity = optional(number)
      target_spot_capacity      = optional(number)
    }))
    master_instance_group = optional(object({
      bid_price = optional(string)
      ebs_config = optional(list(object({
        iops                 = optional(number)
        size                 = number
        throughput           = optional(number)
        type                 = string
        volumes_per_instance = optional(number)
      })))
      instance_count = optional(number)
      instance_type  = string
      name           = optional(string)
    }))
    placement_group_config = optional(list(object({
      instance_role      = optional(string)
      placement_strategy = optional(string)
    })))
    step = optional(list(object({
      action_on_failure = optional(string)
      hadoop_jar_step = optional(list(object({
        args       = optional(list(string))
        jar        = optional(string)
        main_class = optional(string)
        properties = optional(map(string))
      })))
      name = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.additional_info == null || (can(jsondecode(v.additional_info)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.auto_termination_policy == null || (v.auto_termination_policy.idle_timeout == null || (v.auto_termination_policy.idle_timeout >= 60 && v.auto_termination_policy.idle_timeout <= 604800))
      )
    ])
    error_message = "must be between 60 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.configurations_json == null || (can(jsondecode(v.configurations_json)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.core_instance_group == null || (v.core_instance_group.autoscaling_policy == null || (can(jsondecode(v.core_instance_group.autoscaling_policy))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.custom_ami_id == null || (length(v.custom_ami_id) <= 256)
      )
    ])
    error_message = "[from validCustomAMIID: invalid when len(value) > 256]"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_clusters : (
        v.step_concurrency_level == null || (v.step_concurrency_level >= 1 && v.step_concurrency_level <= 256)
      )
    ])
    error_message = "must be between 1 and 256"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

