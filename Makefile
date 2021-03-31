all: submodule-update pb

submodule-update:
	git submodule update --init --recursive

pb:
	$(MAKE) -C services/authsvc/idl pb
	$(MAKE) -C services/usersvc/idl pb
	$(MAKE) -C services/websvc/idl pb
	
cleanpb:
	$(MAKE) -C services/authsvc/idl cleanpb
	$(MAKE) -C services/usersvc/idl cleanpb
	$(MAKE) -C services/websvc/idl cleanpb
