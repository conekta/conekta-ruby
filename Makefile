ci-test:
	bundle exec rspec
ruby:
	rm -rf docs && rm -rf lib/models && rm -rf spec/api && \
	    docker run --rm \
      -v ${PWD}:/local openapitools/openapi-generator-cli:v7.5.0 generate \
      -i https://raw.githubusercontent.com/conekta/openapi/main/_build/api.yaml \
      -g ruby \
      -o /local \
      -c /local/config-ruby.json \
      --global-property modelTests=false,apiTests=true
