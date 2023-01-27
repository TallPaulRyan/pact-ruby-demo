require_relative "./provider_states_for_zoo_app"

Pact.service_provider "Animal Service" do
  honours_pacts_from_pact_broker do
    # Base URL of pact broker is mandatory
    # basic auth username/password and token are optional parameters
    pact_broker_base_url 'http://pact-ruby-demo-pact-broker-1:9292'
    verbose true # Set this to true to see the HTTP requests and responses logged
    publish_verification_results true
    app_version "1.0.0"
    # Specify the consumer version tags for the pacts you want to verify
    # Simple config - a list of tag names
    # This will verify the latest pact with the tag `dev` and the latest pact with the tag `prod`
    # consumer_version_tags ['dev', 'prod']
    
    # Advanced configuration - new syntax
    # This uses the new 'pacts for verification' API if is enabled in your broker
    # For more info on the API see 
    #  https://docs.pact.io/pact_broker/advanced_topics/provider_verification_results#pacts-for-verification
    # For a full explanation of how selectors work, see
    #  https://docs.pact.io/pact_broker/advanced_topics/consumer_version_selectors
    # Requires pact gem version v1.56.0+
    # 
    # tag: name of the tag (required)
    # latest: true|false. Defaults to false, but generally you want the latest pact, so set it to true. To verify all pacts for the specified tag, set latest: false, or omit the key.
    # fallback_tag: the name of the tag to use if a pact with the specified tag does not exist (optional)
    # consumer: the name of the consumer
    # consumer_version_selectors [
    #       { tag: 'main', latest: true }, 
    #       { tag: ENV['GIT_BRANCH'], fallback_tag: 'main', latest: true }, 
    #       { tag: 'prod', latest: true }
    #      ]
    
    # enable_pending true # See docs below
    # include_wip_pacts_since "2020-01-01" # See docs below
  end
 end