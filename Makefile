ALL: deploy

HUGO_FLAGS := --buildDrafts --buildFuture

slide_htmls := $(patsubst %.Rmd,%.html,$(shell find static/slides -iname '*.Rmd' -and -not -iname "*slides-common*"))
post_markdowns := $(patsubst %.Rmarkdown,%.markdown,$(shell find content -name '*.Rmarkdown'))

%.html: %.Rmd
	Rscript -e "rmarkdown::render('"$<"')"

%.html: %.md
	Rscript -e "rmarkdown::render('"$<"')"

%.markdown: %.Rmarkdown
	Rscript -e "rmarkdown::render_site('"$<"', encoding = 'UTF-8')"

deploy: $(slide_htmls) $(post_markdowns)
	hugo $(HUGO_FLAGS) --cleanDestinationDir
	rsync -rxi --delete-after public/ cs-prod:/webroot/courses/cs/344/22sp/
# --times --delete-after --delete-excluded

serve:
	hugo server --disableFastRender $(HUGO_FLAGS)
