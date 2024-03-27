package rules.rds_instance_deletion_protection_should_be_enabled

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_3.4"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 1",
	"id": "3.4",
	"title": "RDS instance 'Deletion Protection' should be enabled",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.deletion_protection == true
}
