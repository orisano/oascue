paths: {
	"/foo": {
		get: {
			description: "get foo"
			responses: {
				"200": {
					description: "OK"
					content: "application/json": schema: "$ref": "#/components/schemas/Info"
				}
			}
		}
	}
}
