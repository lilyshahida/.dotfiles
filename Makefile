LINUX_SCRIPT=./bin/linux.sh
CLEAN_SCRIPT=./bin/cleanup.sh

linux: clean
	chmod +x $(LINUX_SCRIPT)
	$(LINUX_SCRIPT)
clean: 
	chmod +x $(CLEAN_SCRIPT)
	$(CLEAN_SCRIPT)
