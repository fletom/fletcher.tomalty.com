s3cmd sync --acl-public --delete-removed --exclude-from=.s3ignore ./build/ s3://fletcher.tomalty.com
