package rules.auto_minor_version_upgrade_feature_enabled_for_rds_instances

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_3.8"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 1",
	"id": "3.8",
	"title": "Auto Minor Version Upgrade feature Enabled for RDS Instances",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.auto_minor_version_upgrade == true
}
