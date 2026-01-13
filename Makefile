
TARGETS = \
	Checklist_SV_EVSS.pdf \
	Checklist_EN_EVSS.pdf \
	Checklist_SV_EVSS_print.pdf \
	Checklist_EN_EVSS_print.pdf

TYPST_ARGS = --font-path fonts/Lato

all: ${TARGETS}

Checklist_SV_EVSS.pdf: evss_sv.typ checklist.typ evss_common.typ
	typst compile ${TYPST_ARGS} evss_sv.typ $@

Checklist_EN_EVSS.pdf: evss_en.typ checklist.typ evss_common.typ
	typst compile ${TYPST_ARGS} evss_en.typ $@

Checklist_SV_EVSS_print.pdf: Checklist_SV_EVSS.pdf print_page.py
	python3 print_page.py Checklist_SV_EVSS.pdf $@

Checklist_EN_EVSS_print.pdf: Checklist_EN_EVSS.pdf print_page.py
	python3 print_page.py Checklist_EN_EVSS.pdf $@

clean:
	rm -f ${TARGETS}
