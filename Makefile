ALL: deploy
all: deploy

HUGO_FLAGS := --buildDrafts --buildFuture

slide_htmls := $(patsubst %.Rmd,%.html,$(shell find static/slides -iname '*.Rmd' -and -not -iname "*slides-common*"))
post_markdowns := $(patsubst %.Rmarkdown,%.markdown,$(shell find content -name '*.Rmarkdown'))
slide_pdfs := $(patsubst %.html,%.pdf,$(slide_htmls))


%.html: %.Rmd
	Rscript -e "rmarkdown::render('"$<"')"

%.html: %.md
	Rscript -e "rmarkdown::render('"$<"')"

%.pdf: %.html
	decktape --pause 500 --chrome-arg=--allow-file-access-from-files "$<" "$@"

%.markdown: %.Rmarkdown
	Rscript -e "rmarkdown::render_site('"$<"', encoding = 'UTF-8')"

deploy-quick: $(slide_htmls) $(post_markdowns)
	hugo $(HUGO_FLAGS) --cleanDestinationDir
	rsync -rxi --delete-after public/ cs-prod:/webroot/courses/cs/344/22sp/
# --times --delete-after --delete-excluded

deploy-pdf: deploy-quick $(slide_pdfs)
	rsync -rxi --delete-after public/ cs-prod:/webroot/courses/cs/344/22sp/

deploy: deploy-quick deploy-pdf

serve:
	hugo server --disableFastRender $(HUGO_FLAGS)
