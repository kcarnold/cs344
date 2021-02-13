ALL: deploy

slide_htmls := $(patsubst %.Rmd,%.html,$(shell find static/slides -iname '*.Rmd' -and -not -iname "*slides-common*"))

%.html: %.Rmd
	Rscript -e "rmarkdown::render('"$<"')"

content/home/schedule.markdown: content/home/schedule.Rmarkdown daily.txt
	Rscript -e "rmarkdown::render_site('content/home/schedule.Rmarkdown',  encoding = 'UTF-8')"

deploy: $(slide_htmls) content/home/schedule.markdown
	hugo
	rsync -rxi --delete-after public/ cs-prod:/webroot/courses/cs/344/ka37/
	# --times --delete-after --delete-excluded
