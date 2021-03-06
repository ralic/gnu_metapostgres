# Copyright (C) 2017 Antonin Houska
#
# This file is part of MetaPostgres.
#
# MetaPostgres is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# MetaPostgres is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.

# You should have received a copy of the GNU General Public License along with
# MetaPostgres. If not, see <http://www.gnu.org/licenses/>.

TEXMFHOME := $(shell kpsewhich -var-value TEXMFHOME)
METAPOSTGRES := $(if $(TEXMFHOME),$(TEXMFHOME)/metapost/base/metapostgres,\
	$(error "metapost not installed or misconfigured"))

install:
	mkdir -p $(METAPOSTGRES)
	cp query.mp common.mp internalvars.mp table.mp plan.mp $(METAPOSTGRES)

uninstall:
	rm -r $(METAPOSTGRES)
