

ensure-dependencies:
	@echo "Ensuring docker is installed..."
	@docker info

brand:
	@echo "Creating our systemic_jest27 manifest file..."
	@node_modules/make-manifest/bin/make-manifest
	@cat ./manifest.json

package:
	@echo "Building our systemic_jest27 docker image..."
	@docker build --tag systemic_jest27 .
	@docker images

qa:
	@echo "Checking that our systemic_jest27 tests dont fail..."
	@npm run qa