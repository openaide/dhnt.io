# Tools Examples

* Search
  + [Brave](brame.yaml)
  + [Google](google.yaml)

* MCP
  + [HuggingFace](hf.yaml)
  + [Zapier](zapier.yaml)

```yaml
###
type: "func | web | mcp"
# Add an entry "<key-name>" with your service API Key at:
# https://ai.dhnt.io/settings/api-key
api_key: "<key-name>"

# mcp
connector:
  base_url: "<service endpoint>"

# func | web
tools:
  - name: ""
    description: ""
    parameters: {}
```

Please note. The hub comes with builtin agents, tools, and models. See [standard](../../standard/) for details.