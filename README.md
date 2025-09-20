# DHNT.io AI

This repository is for DHNT.io AI feature requests and issue tracking.

DHNT.io AI Hub, an online version of [AI CLI](https://github.com/qiangli/ai), is now live! [https://ai.dhnt.io](https://ai.dhnt.io)


## AI Cloud

*DHNT.io AI Cloud* is an online tool designed for individual users, developers,
and small businesses. It offers simplicity and features not available in products
and services from major AI corporations.

With DHNT.io AI Cloud, you can create agents, share your creations with
family, friends, and teammates, and collaborate with agents on a daily basis.

## Domain name

DHNT is derived from the alphabet: abc *D* -efg *H* -ijklm *N* -opqrs *T* -uvwxyz

## Screenshots

### Auth

![Authentication](docs/admin-auth.png)

### Admin

![Agents](docs/admin-agents.png)

### Share

![Send invite](docs/admin-invite.png)

### Chat

![Chat](docs/user-chat-ed.png)

## How to ...

### Create

[YAML](https://yaml.org/) is used for setting up agents, models, and tools. See examples [here](examples/)

```yaml
agents:
  - name: "ed"
    display: "✍️ Editor"
    description: "An expert in editing and proofreading."
    model: L1
    instruction:
      content: |
        You are tasked with editing and proofreading text. Focus on ensuring style consistency,
        accuracy in fact-checking, and clarity. Correct any mistakes or inconsistencies in spelling,
        punctuation, and word usage.
        Provide the final corrected version only in your response.
```

```yaml
provider: "openai"
base_url: "https://api.openai.com/v1/"
api_key: "openai"

models:
  L1:
    model: "gpt-4.1-mini"
  L2:
    model: "gpt-4.1"
  L3:
    model: "o4-mini"
```

```yaml
kit: "ddg"
type: "web"

tools:
  - name: "ddg_search"
    description: "Search the web using DuckDuckGo and return formatted results"
    parameters:
      type: "object"
      properties:
        query:
          type: "string"
          description: "The search query string"
        max_results:
          type: "integer"
          description: "Maximum number of results to return"
          default: 5
          minimum: 1
          maximum: 10
      required:
        - query
```

### Share

You may optionally share your agent with your family and friends.

### Use

Start your input with the agent name you created: @[agent]

```text
@ed [your input here]

```
