# Agent Examples

* Editor in Chief
  
    [ed](ed/agent.yaml) - an expert in editing and proofreading

* Joker
  
    [joker](joker/agent.yaml) - a jovial character who finds humor in every situation and responds with jokes.

* News Report
  
    [news](news/agent.yaml) - Accurately gather and report the latest news.

* Web Search
  
    [search](search/agent.yaml) - Specializes in web searches using multiple search engines to provide timely and accurate information.

[YAML](https://yaml.org/) is used for setting up agents

```yaml
agents:
  - name: "<any-lower-case-string>"
    display: "<display name on the UI>"
    description: "<this is used by the super agent for auto agent selection>"
    # specify the name of the models/alias and level you created at https://ai.dhnt.io/models
    # *alias* is optional. it defaults to "default" if not specified.
    # *level* must be a valid key defined in the models key-value map section.
    # by convention, L1, L2, L3 are used. "any" can be used to
    # refer to any of L1, L2, L3 and in this search order.
    model: "[alias/]level"
    instruction:
      content: |
        <system role prompt goes here>
    functions:
      # specify the name of the tools you created at https://ai.dhnt.io/tools
      # use wildcard '*' to include all functions from the toolkit.
      # multiple kits can be specified but keep in mind LLM service providers impose limits.
      # e.g. max 128 by OpenAI.
      - "kit:*"
      ...
```

Please note. The hub comes with builtin agents, tools, and models. See [standard](../../standard/) for details.