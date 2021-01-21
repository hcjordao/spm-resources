SWIFTGEN_DIR=./Tools/SwiftGen
GENERATED_CODE_DIR=./Modules/Sources/Resources/Generated

all: generate_assets_code

clean: clean_assets_code

# Assets

generate_assets_code:
	swiftgen config run --config $(SWIFTGEN_DIR)/assets.yml

clean_assets_code:
	rm -f $(GENERATED_CODE_DIR)/Asset.generated.swift
