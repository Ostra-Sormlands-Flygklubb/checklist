VERSION=2026-03-07

TARGETS = \
	Checklist_SV_EVSS_${VERSION}.pdf \
	Checklist_EN_EVSS_${VERSION}.pdf \
	Checklist_SV_EVSS_${VERSION}_print.pdf \
	Checklist_EN_EVSS_${VERSION}_print.pdf

TYPST_ARGS = --font-path fonts/Lato

all: ${TARGETS}

Checklist_SV_EVSS_${VERSION}.pdf: evss_sv.typ checklist.typ
	typst compile --input "version=${VERSION}" ${TYPST_ARGS} evss_sv.typ $@

Checklist_EN_EVSS_${VERSION}.pdf: evss_en.typ checklist.typ
	typst compile --input "version=${VERSION}" ${TYPST_ARGS} evss_en.typ $@

Checklist_SV_EVSS_${VERSION}_print.pdf: Checklist_SV_EVSS_${VERSION}.pdf print_page.py
	python3 print_page.py Checklist_SV_EVSS_${VERSION}.pdf $@

Checklist_EN_EVSS_${VERSION}_print.pdf: Checklist_EN_EVSS_${VERSION}.pdf print_page.py
	python3 print_page.py Checklist_EN_EVSS_${VERSION}.pdf $@

clean:
	rm -f ${TARGETS}
