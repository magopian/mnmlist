default:
	pelican -s settings.py

watch:
	pelican -s settings.py -r

update:
	# creds.txt: user@server:~path/to/blog
	rsync -arvz --progress --exclude '.*.swp' ./output/ `cat creds.txt`
