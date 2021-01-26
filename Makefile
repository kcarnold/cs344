deploy:
	hugo
	rsync -rxi --times public/ cs-prod:/webroot/courses/cs/344/ka37/
	# --delete-after --delete-excluded
