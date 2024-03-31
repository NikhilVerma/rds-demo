package rules.rds_instances_and_clusters_shall_not_use_the_default_database_engine_port_to_enhance_security_through_obscurity

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_2.2999999999999998"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 8",
	"id": "2.2999999999999998",
	"title": "RDS instances and clusters shall not use the default database engine port to enhance security through obscurity.",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.auto_minor_version_upgrade == true
}
