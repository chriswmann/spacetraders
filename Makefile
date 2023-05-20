.PHONY: clean view-agent

view-agent:
	curl 'https://api.spacetraders.io/v2/my/agent' \
 		--header 'Authorization: Bearer ${SPACETRADERS_AGENT_ID}' | jq '.'

describe-factions:
	curl 'https://api.spacetraders.io/v2/factions' \
		--header 'Authorization: Bearer ${SPACETRADERS_AGENT_ID}' | jq '.'

clean:
	rm -rf *.o

$(VERBOSE).SILENT:
