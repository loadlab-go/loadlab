all: submodule-update

submodule-update:
	git submodule update --init --recursive

