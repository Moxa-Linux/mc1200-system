# SPDX-License-Identifier: Apache-2.0
MOXA_VERSION_CFG=base-system/etc/moxa-configs/moxa-version.conf
PKG_FW_VERSION ?= 1.2.1
PKG_BUILDDATE ?= $(shell date +%y%m%d%H)

all: moxa-ver-cfg

moxa-ver-cfg:
	@echo "FW_VERSION=$(PKG_FW_VERSION)" > $(MOXA_VERSION_CFG)
	@echo "BUILDDATE=$(PKG_BUILDDATE)" >> $(MOXA_VERSION_CFG)

clean:
	rm -f $(MOXA_VERSION_CFG)
