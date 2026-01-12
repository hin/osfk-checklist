TYPST_ARGS=--font-path fonts/Lato

all: evss.pdf evss_print.pdf

watch:
	typst watch ${TYPST_ARGS} evss.typ

evss.pdf: evss.typ
	typst compile ${TYPST_ARGS} evss.typ

evss_print.pdf: evss.pdf print_page.py
	python3 print_page.py evss.pdf evss_print.pdf

clean:
	rm evss.pdf evss_print.pdf
