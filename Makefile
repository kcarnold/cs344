ALL: deploy

slide_htmls := $(patsubst %.Rmd,%.html,$(shell find static/slides -iname '*.Rmd' -and -not -iname "*slides-common*"))

%.html: %.Rmd
	Rscript -e "rmarkdown::render('"$<"')"

deploy $(slide_htmls):
	hugo
	rsync -rxi public/ cs-prod:/webroot/courses/cs/344/ka37/
	# --times --delete-after --delete-excluded
