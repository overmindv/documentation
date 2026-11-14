TYPST ?= typst
.PHONY: all common individual slides
all: common individual slides
common:
	@mkdir -p output
	$(TYPST) compile --root . tz-common/main.typ output/overmindv-tz-common.pdf
individual:
	@mkdir -p output
	$(TYPST) compile --root . tz-individual/main.typ output/overmindv-tz-vasyukov.pdf
slides:
	@mkdir -p output
	$(TYPST) compile --root . slides/main.typ output/overmindv-kt1-vasyukov.pdf
