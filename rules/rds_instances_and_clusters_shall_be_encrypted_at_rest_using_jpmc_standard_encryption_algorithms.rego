package rules.rds_instances_and_clusters_shall_be_encrypted_at_rest_using_jpmc_standard_encryption_algorithms

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH1": [
				"AWSDBBENCH1_A"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - Version: 1",
	"id": "A",
	"title": "RDS instances and clusters shall be encrypted at rest using JPMC standard encryption algorithms.",
}

# Please write your OPA rule here

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.auto_minor_version_upgrade == true
}
