all: targets

# SE-MMB / SE-MMC (EVSS)

EVSS_VERSION=2026-05-04-draft

TARGETS = \
	Checklist_SV_EVSS_${EVSS_VERSION}.pdf \
	Checklist_EN_EVSS_${EVSS_VERSION}.pdf \
	Checklist_SV_EVSS_${EVSS_VERSION}_print.pdf \
	Checklist_EN_EVSS_${EVSS_VERSION}_print.pdf \

Checklist_SV_EVSS_${EVSS_VERSION}.pdf: evss_sv.typ checklist.typ
	typst compile --input "version=${EVSS_VERSION}" ${TYPST_ARGS} evss_sv.typ $@

Checklist_EN_EVSS_${EVSS_VERSION}.pdf: evss_en.typ checklist.typ
	typst compile --input "version=${EVSS_VERSION}" ${TYPST_ARGS} evss_en.typ $@

Checklist_SV_EVSS_${EVSS_VERSION}_print.pdf: Checklist_SV_EVSS_${EVSS_VERSION}.pdf print_page.py
	python3 print_page.py Checklist_SV_EVSS_${EVSS_VERSION}.pdf $@

Checklist_EN_EVSS_${EVSS_VERSION}_print.pdf: Checklist_EN_EVSS_${EVSS_VERSION}.pdf print_page.py
	python3 print_page.py Checklist_EN_EVSS_${EVSS_VERSION}.pdf $@

# SE-MLT (P28A)

SEMLT_VERSION=2026-03-03-draft

TARGETS += \
	Checklist_SV_SE-MLT_${SEMLT_VERSION}.pdf \
	Checklist_SV_SE-MLT_${SEMLT_VERSION}_print.pdf

Checklist_SV_SE-MLT_${SEMLT_VERSION}.pdf: semlt_sv.typ checklist.typ
	typst compile --input "version=${SEMLT_VERSION}" ${TYPST_ARGS} semlt_sv.typ $@

Checklist_SV_SE-MLT_${SEMLT_VERSION}_print.pdf: Checklist_SV_SE-MLT_${SEMLT_VERSION}.pdf print_page.py
	python3 print_page.py Checklist_SV_SE-MLT_${SEMLT_VERSION}.pdf $@



# Common rules

TYPST_ARGS = --font-path fonts/Lato
targets:	${TARGETS}

clean:
	rm -f ${TARGETS}
