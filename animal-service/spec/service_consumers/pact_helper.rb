Pact.service_provider "Animal Service" do
  honours_pacts_from_pact_broker do
    # Base URL of pact broker is mandatory
    # basic auth username/password and token are optional parameters
    pact_broker_base_url 'http://pact-ruby-demo-pact-broker-1:9292'
    # verbose false # Set this to true to see the HTTP requests and responses logged

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

    # Advanced configuration - OLD SYNTAX
    # name: name of the tag
    # all: it takes the boolean value true|false. Optional. Defaults to false.
    #      To fetch all the pacts for a tag, set it to true.
    #      To fetch only the latest pact, set it to false.
    # fallback: In case, the tag does not exist, it will fetch pacts for the fallback-tag. This is an optional
    #           parameter.
    # Requires pact gem version v1.28.0+
    # This format is supported, but it is preferrable to use the consumer_version_selectors
    # There was a regression sometime between v1.42.0 and v1.56.0 where the consumer_version_tags were not mapped correctly to the new selectors
    # If you have issues, please upgrade to the latest version of the pact gem.
    # consumer_version_tags [{name: 'tag-name', all: false, fallback: 'fallback-tag-name'}]
    
    # enable_pending true # See docs below
    # include_wip_pacts_since "2020-01-01" # See docs below
  end
 end