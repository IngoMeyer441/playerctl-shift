INSTALL = install
DESTDIR =
PREFIX = /usr/local/
BIN_DIR = $(PREFIX)/bin


no-default:
	@echo "There is no default target. Please choose one of the following targets: install"
	@exit 1

install:
	@$(INSTALL) -D -v -m 0755 playerctl-shift.sh "$(DESTDIR)$(BIN_DIR)/playerctl-shift"


.PHONY: no-default install
