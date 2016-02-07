aws s3 sync \
	./build/ s3://fletcher.tomalty.com \
	--acl 'public-read' \
	--exclude '*.less' --exclude '*.redirect' \
	--delete
