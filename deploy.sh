
S3_BUCKET_NAME='fletcher.tomalty.com'
EXCLUDE=('*.less')


cd ./build
EXCLUDE+=('*.redirect')

aws s3 sync \
	./ s3://$S3_BUCKET_NAME \
	--acl 'public-read' \
	${EXCLUDE[@]/#/--exclude } \
	--delete

for f in $(find . -name '*.redirect'); do
	l=s3://$S3_BUCKET_NAME/${f#./}
	l=${l%.redirect}
	aws s3 cp \
		$f $l \
		--website-redirect $(cat $f) \
		--acl 'public-read'
done
