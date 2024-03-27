package rules.rds_instances_should_have_fedramp_approved_database_engines

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_3.3"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 1",
	"id": "3.3",
	"title": "RDS instances should have FedRAMP approved database engines",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.engine == "postgres"
}
