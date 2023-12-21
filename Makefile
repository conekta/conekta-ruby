ci-test:
	bundle exec rspec
ruby:
	npx @openapitools/openapi-generator-cli generate \
	-i https://raw.githubusercontent.com/conekta/openapi/main/_build/api.yaml \
	-g ruby \
	-o . \
	-c config-ruby.json \
	--global-property modelTests=false
