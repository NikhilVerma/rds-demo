package rules.rds_instances_should_have_backup_retention_periods_configured

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_3.7"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 1",
	"id": "3.7",
	"title": "RDS instances should have backup retention periods configured",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.backup_retention_period > 0
}
