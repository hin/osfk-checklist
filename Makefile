all: evss.pdf evss_print.pdf

evss.pdf: evss.typ
	typst compile --font-path fonts/Lato evss.typ

evss_print.pdf: evss.pdf print_page.py
	python3 print_page.py evss.pdf evss_print.pdf
