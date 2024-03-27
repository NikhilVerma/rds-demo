package rules.enable_encryption_at_rest_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSDBBENCH": [
				"AWSDBBENCH_3.5"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: CIS AWS database services benchmark - Version: 1",
	"id": "3.5",
	"title": "Enable Encryption at Rest (Manual)",
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

# Try to break it
allow {
  input.storage_encrypted == false
}
