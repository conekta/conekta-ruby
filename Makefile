ci-test:
	bundle exec rspec
ruby:
	rm -rf docs && rm -rf lib/models && \
	    docker run --rm \
      -v ${PWD}:/local openapitools/openapi-generator-cli:v7.2.0 generate \
      -i https://raw.githubusercontent.com/conekta/openapi/main/_build/api.yaml \
      -g ruby \
      -o /local \
      -c /local/config-ruby.json \
      --global-property modelTests=false
