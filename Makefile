ALL: deploy
all: deploy

.PHONY: deploy deploy-quick deploy-pdf preview check ALWAYS_REBUILD

HUGO_FLAGS := --buildDrafts --buildFuture
DEST_DIR := /tmp/cs344-build/
DEPLOY_TARGET := csweb:/webroot/courses/cs/344/23sp/

slide_htmls := $(patsubst %.Rmd,%.html,$(shell find static/slides \( -iname '*.Rmd' -o -iname '*.qmd' \) -and -not -iname "*slides-common*"))
slide_pdfs := $(patsubst %.html,%.pdf,$(slide_htmls))
fundamentals_soln := $(wildcard static/fundamentals/*_soln.ipynb)
fundamentals := $(subst _soln,,$(fundamentals_soln))
fundamentals_html := $(patsubst %.ipynb,%.html,$(sort $(fundamentals) $(fundamentals_soln) $(wildcard static/fundamentals/*.ipynb)))
handouts := $(patsubst %.md,%.pdf,$(shell find content -name '*-handout.md'))
extra_notebooks := content/units/04models/homework/example-homework-2.html

# Build slides
%.html: %.Rmd
	Rscript -e "rmarkdown::render('"$<"')"

%.html: %.qmd
	quarto render "$<"

$(handouts) : %.pdf: %.md
	pandoc "$<" -o "$@"

# Build PDFs of slides
%.pdf: %.html
	decktape --pause 250 --chrome-arg=--allow-file-access-from-files "$<" "$@"

# Build source files from RMarkdown (blogdown). Not currently using this.
%.markdown: %.Rmarkdown
	Rscript -e "rmarkdown::render_site('"$<"', encoding = 'UTF-8')"

# Generate distributed notebooks from Solutions notebooks.
$(fundamentals) : %.ipynb : %_soln.ipynb nb_strip.py
	python nb_strip.py "$<" "$@"

# Generate HTML previews of notebooks.
%.html : %.ipynb
	jupyter nbconvert --to=html "$<"

content/all_fundamentals.md: $(fundamentals) ALWAYS_REBUILD
	python gen_fundamentals_index.py --output="$@"

# Deploy to cs-prod, first pass (before building slide PDFs)
deploy-quick: $(slide_htmls) $(fundamentals) $(fundamentals_html) content/all_fundamentals.md $(handouts) $(extra_notebooks)
	hugo $(HUGO_FLAGS) --destination ${DEST_DIR} --cleanDestinationDir
	rsync -rxi --delete-after ${DEST_DIR}/ ${DEPLOY_TARGET}
# --times --delete-after --delete-excluded

# Deploy again after building slide PDFs (which are slow).
deploy-pdf: deploy-quick $(slide_pdfs)
	rsync -rxi --delete-after ${DEST_DIR}/ ${DEPLOY_TARGET}

deploy: deploy-quick deploy-pdf

preview:
	hugo server --disableFastRender $(HUGO_FLAGS)

# Check links.
# Based on https://github.com/gjtorikian/html-proofer
# installed on my machine using `brew gem install html-proofer`.
check:
	htmlproofer --check-html --check-img-http --disable-external --report-invalid-tags --report-mismatched-tags --report-missing-names ${DEST_DIR}

