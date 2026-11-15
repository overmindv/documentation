TYPST ?= typst
.PHONY: all common individual individual-leonid slides
all: common individual individual-leonid slides
common:
	@mkdir -p output
	$(TYPST) compile --root . tz-common/main.typ output/overmindv-tz-common.pdf
individual:
	@mkdir -p output
	$(TYPST) compile --root . tz-individual/main.typ output/overmindv-tz-vasyukov.pdf
individual-leonid:
	@mkdir -p output
	$(TYPST) compile --root . tz-individual-livshits/main.typ output/overmindv-tz-livshits.pdf
slides:
	@mkdir -p output
	$(TYPST) compile --root . slides/main.typ output/overmindv-kt1-vasyukov.pdf
