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
    display: "<for display on the UI>"
    description: "<this is used by the super agent for auto agent selection>"
    # *alias* is optional. it references the name of the models you created.
    # if not specified. it defaults to "default".
    # *level* must be a valid key defined in the models key-value map section.
    # by convention, L1, L2, L3 are used. "any" can be used to
    # refer to any of L1, L2, L3 and in this search order.
    model: "[alias/]level"
    instruction:
      content: |
        system role prompt goes here
    functions:
    # kit is the name of the tool you created
    # to include all functions from the kit, use wildcard '*'
    # you may include functions from multiple kits. but keep in mind LLM imposes a limit.
    # e.g. 128 by OpenAI.
      - "kit:*"
      ...
```

Please note. The hub comes with builtin agents, tools, and models. See [standard](../../standard/) for details.