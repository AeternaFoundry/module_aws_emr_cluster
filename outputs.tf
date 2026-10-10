output "emr_clusters_id" {
  description = "Map of id values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emr_clusters_additional_info" {
  description = "Map of additional_info values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.additional_info if v.additional_info != null && length(v.additional_info) > 0 }
}
output "emr_clusters_applications" {
  description = "Map of applications values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.applications if v.applications != null && length(v.applications) > 0 }
}
output "emr_clusters_arn" {
  description = "Map of arn values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "emr_clusters_auto_termination_policy" {
  description = "Map of auto_termination_policy values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.auto_termination_policy) if v.auto_termination_policy != null && length(v.auto_termination_policy) > 0 }
}
output "emr_clusters_autoscaling_role" {
  description = "Map of autoscaling_role values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.autoscaling_role if v.autoscaling_role != null && length(v.autoscaling_role) > 0 }
}
output "emr_clusters_bootstrap_action" {
  description = "Map of bootstrap_action values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.bootstrap_action if v.bootstrap_action != null && length(v.bootstrap_action) > 0 }
}
output "emr_clusters_cluster_state" {
  description = "Map of cluster_state values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.cluster_state if v.cluster_state != null && length(v.cluster_state) > 0 }
}
output "emr_clusters_configurations" {
  description = "Map of configurations values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.configurations if v.configurations != null && length(v.configurations) > 0 }
}
output "emr_clusters_configurations_json" {
  description = "Map of configurations_json values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.configurations_json if v.configurations_json != null && length(v.configurations_json) > 0 }
}
output "emr_clusters_core_instance_fleet" {
  description = "Map of core_instance_fleet values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.core_instance_fleet) if v.core_instance_fleet != null && length(v.core_instance_fleet) > 0 }
}
output "emr_clusters_core_instance_group" {
  description = "Map of core_instance_group values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.core_instance_group) if v.core_instance_group != null && length(v.core_instance_group) > 0 }
}
output "emr_clusters_custom_ami_id" {
  description = "Map of custom_ami_id values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.custom_ami_id if v.custom_ami_id != null && length(v.custom_ami_id) > 0 }
}
output "emr_clusters_ebs_root_volume_size" {
  description = "Map of ebs_root_volume_size values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.ebs_root_volume_size if v.ebs_root_volume_size != null }
}
output "emr_clusters_ec2_attributes" {
  description = "Map of ec2_attributes values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.ec2_attributes) if v.ec2_attributes != null && length(v.ec2_attributes) > 0 }
}
output "emr_clusters_keep_job_flow_alive_when_no_steps" {
  description = "Map of keep_job_flow_alive_when_no_steps values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.keep_job_flow_alive_when_no_steps if v.keep_job_flow_alive_when_no_steps != null }
}
output "emr_clusters_kerberos_attributes" {
  description = "Map of kerberos_attributes values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.kerberos_attributes) if v.kerberos_attributes != null && length(v.kerberos_attributes) > 0 }
  sensitive   = true
}
output "emr_clusters_list_steps_states" {
  description = "Map of list_steps_states values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.list_steps_states if v.list_steps_states != null && length(v.list_steps_states) > 0 }
}
output "emr_clusters_log_encryption_kms_key_id" {
  description = "Map of log_encryption_kms_key_id values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.log_encryption_kms_key_id if v.log_encryption_kms_key_id != null && length(v.log_encryption_kms_key_id) > 0 }
}
output "emr_clusters_log_uri" {
  description = "Map of log_uri values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.log_uri if v.log_uri != null && length(v.log_uri) > 0 }
}
output "emr_clusters_master_instance_fleet" {
  description = "Map of master_instance_fleet values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.master_instance_fleet) if v.master_instance_fleet != null && length(v.master_instance_fleet) > 0 }
}
output "emr_clusters_master_instance_group" {
  description = "Map of master_instance_group values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => one(v.master_instance_group) if v.master_instance_group != null && length(v.master_instance_group) > 0 }
}
output "emr_clusters_master_public_dns" {
  description = "Map of master_public_dns values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.master_public_dns if v.master_public_dns != null && length(v.master_public_dns) > 0 }
}
output "emr_clusters_name" {
  description = "Map of name values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "emr_clusters_os_release_label" {
  description = "Map of os_release_label values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.os_release_label if v.os_release_label != null && length(v.os_release_label) > 0 }
}
output "emr_clusters_placement_group_config" {
  description = "Map of placement_group_config values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.placement_group_config if v.placement_group_config != null && length(v.placement_group_config) > 0 }
}
output "emr_clusters_region" {
  description = "Map of region values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "emr_clusters_release_label" {
  description = "Map of release_label values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.release_label if v.release_label != null && length(v.release_label) > 0 }
}
output "emr_clusters_scale_down_behavior" {
  description = "Map of scale_down_behavior values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.scale_down_behavior if v.scale_down_behavior != null && length(v.scale_down_behavior) > 0 }
}
output "emr_clusters_security_configuration" {
  description = "Map of security_configuration values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.security_configuration if v.security_configuration != null && length(v.security_configuration) > 0 }
}
output "emr_clusters_service_role" {
  description = "Map of service_role values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.service_role if v.service_role != null && length(v.service_role) > 0 }
}
output "emr_clusters_step" {
  description = "Map of step values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.step if v.step != null && length(v.step) > 0 }
}
output "emr_clusters_step_concurrency_level" {
  description = "Map of step_concurrency_level values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.step_concurrency_level if v.step_concurrency_level != null }
}
output "emr_clusters_tags" {
  description = "Map of tags values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "emr_clusters_tags_all" {
  description = "Map of tags_all values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "emr_clusters_termination_protection" {
  description = "Map of termination_protection values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.termination_protection if v.termination_protection != null }
}
output "emr_clusters_unhealthy_node_replacement" {
  description = "Map of unhealthy_node_replacement values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.unhealthy_node_replacement if v.unhealthy_node_replacement != null }
}
output "emr_clusters_visible_to_all_users" {
  description = "Map of visible_to_all_users values across all emr_clusters, keyed the same as var.emr_clusters"
  value       = { for k, v in aws_emr_cluster.emr_clusters : k => v.visible_to_all_users if v.visible_to_all_users != null }
}

