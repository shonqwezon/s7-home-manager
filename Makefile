.DEFAULT_GOAL := home

STATE_FILE := .target
TARGET_HOST ?= $(shell test -f $(STATE_FILE) && cat $(STATE_FILE))

init: check-target-host save-target-host
	nix run home-manager/release-26.05 -- switch --flake .#$(TARGET_HOST) --show-trace

home: check-target-host
	home-manager switch --flake .#$(TARGET_HOST) --show-trace -b backup

news: check-target-host
	home-manager news --flake .#$(TARGET_HOST)

clean:
	nix-collect-garbage -d

check-target-host:
	@test -n "$(TARGET_HOST)" || (echo "TARGET_HOST is required: make init TARGET_HOST=your_target_host" && exit 1)

save-target-host:
	@echo "$(TARGET_HOST)" > $(STATE_FILE)