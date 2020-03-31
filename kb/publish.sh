#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./publish.sh [TargetDir] [snapshot/release] [S3Path]"
    exit 1
fi

if [ "$2" != "snapshot" ] && [ "$2" != "release" ]; then
    echo "Must be snapshot or release"
    exit 1
fi	

SNAPSHOT_BUCKET=snapshots.opendistroforelasticsearch.amazon.com
RELEASE_BUCKET=artifacts.opendistroforelasticsearch.amazon.com

if [ "$2" = "snapshot" ]; then
	aws s3 cp $1 s3://$SNAPSHOT_BUCKET/$3/ --recursive
else
	aws s3 cp $1 s3://$RELEASE_BUCKET/$3/ --recursive
fi