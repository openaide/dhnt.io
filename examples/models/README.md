# Models Examples

* OpenAI [GPT4](gpt4.yaml) models

* OpenAI [GTP5](gpt5.yaml) models

* Anthropic [Claude](claude.yaml) models

* Gemini [Gemini](gemini.yaml) models

* Multi Providers [Mix](mix.yaml) models

You may obtain your own API Keys from the service providers.

+ [Anthropic](https://console.anthropic.com/settings/keys)
+ [Gemini](https://aistudio.google.com/app/apikey)
+ [OpenAI](https://platform.openai.com/api-keys)

[YAML](https://yaml.org/) is used for setting up models.

Models or model alias is designed to indirectly reference different language models from different LLM service providers.
You may switch the underlying LLM models without affecting agent configurations.
You may mix different service providers in the same configuration.

```yaml
##
# these top level values are used if not specified in the models section.
#
# supported provider: one of anthropic, gemini, openai
provider: "anthropic | gemini | openai"
# for openai-compatible services, you need to change to the appropriate base url.
base_url: "https://api.openai.com/v1/"
# specify the name of the api key entry you added at:
# https://ai.dhnt.io/settings/api-key
# DONOT set your actual API key/token here.
api_key: "<any-string>"

models:
  # you may use any string as the level key.
  # if you use L1, L2, L3. "any" can be specifed in your agent configuration to refer to any of them and in that search order.
  <level>:
    # valid model name from your service provider
    model: "<model name>"
    # the following can be omitted if provided at the top level of this configuration.
    provider: ""
    api_key: ""
    base_url: ""
  
  ...
```

Please note. The hub comes with builtin agents, tools, and models. See [standard](../../standard/) for details.
