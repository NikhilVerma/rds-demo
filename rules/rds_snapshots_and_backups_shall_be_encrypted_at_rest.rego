package rules.rds_snapshots_and_backups_shall_be_encrypted_at_rest

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH3": [
				"AWSDBBENCH3_B"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - Version: 1",
	"id": "B",
	"title": "RDS snapshots and backups shall be encrypted at rest.",
}

# Please write your OPA rule here

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.auto_minor_version_upgrade == true
}
