# Bamboo.CampaignMonitorAdapter 
Send emails with Campaign Monitor via this adapter

A [Campiagn Monitor](https://campaignmonitor.com/) Adapter for the [Bamboo](https://github.com/thoughtbot/bamboo) email library.

## Installation

The package can be installed as:

1. Add bamboo_campaign_monitor to your list of dependencies in `mix.exs`:

```elixir
def deps do
  # Get from hex
  [{:bamboo_campaign_monitor, "~> 0.5"}]
end
```

3. Add your Campaign Monitor API key to your config

> You can find this key as `Server API token` under the `Credentials` tab in each Postmark server.

```elixir
# In your configuration file:
#  * General configuration: config/config.exs
#  * Recommended production only: config/prod.exs

config :my_app, MyApp.Mailer,
      adapter: Bamboo.CampaignMonitorAdapter,
      api_key: "my_api_key"
```

4. Follow Bamboo [Getting Started Guide](https://github.com/thoughtbot/bamboo#getting-started)
