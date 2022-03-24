PACKAGE_VERSION := $(shell git describe --tags | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g')

package: source_archive
	makepkg -s

source_archive:
	cd "$(shell git rev-parse --show-toplevel)" && \
	git archive --prefix="playerctl-shift-$(PACKAGE_VERSION)/" --output="packaging/arch/playerctl-shift-$(PACKAGE_VERSION).tar.gz" "v$(PACKAGE_VERSION)"

clean:
	rm -rf pkg src playerctl-shift-*.tar*

.PHONY: clean package source_archive
