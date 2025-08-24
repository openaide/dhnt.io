# dhnt.io

This repository is for DHNT.io AI Cloud Hub feature requests and issue tracking.

Cloud AI Hub is an online version of [AI CLI](https://github.com/qiangli/ai) is now live! [https://ai.dhnt.io](https://ai.dhnt.io)


## DHNT.io domain name

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

### Create Agent

[YAML](https://yaml.org/) is used for setting up agents, tools, and models. See examples [here](examples/)

```yaml
###
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
###
```

### Share

You may optionally share your agent with your family and friends.

### Use

Start your input with the agent name you created: @[agent]

```text
@ed [your input here]

```
