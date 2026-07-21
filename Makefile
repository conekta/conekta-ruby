ci-test:
	bundle exec rspec
ruby:
	rm -rf docs && rm -rf lib/models && rm -rf lib/conekta/models  &&  rm -rf spec/api && \
	    docker run --rm \
      -v ${PWD}:/local openapitools/openapi-generator-cli:v7.24.0 generate \
      -i https://raw.githubusercontent.com/conekta/openapi/refs/heads/release/v2.3.0/_build/api.yaml \
      -g ruby \
      -o /local \
      -c /local/config-ruby.json \
      --global-property modelTests=false,apiTests=true
