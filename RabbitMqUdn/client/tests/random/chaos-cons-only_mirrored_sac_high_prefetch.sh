#! /bin/bash

cd ../..

TEST_NAME=$(date +%Y%m%d_%H%M)
echo $TEST_NAME
mkdir logs/$TEST_NAME

python -u random-test.py --queue $1 \
--test-name $TEST_NAME \
--tests 15 \
--run-minutes 10 \
--grace-period-sec 300 \
--in-flight-max 1000 \
--sequences 1 \
--cluster 3 \
--consumers 5 \
--pre-fetch 1000 \
--queue-type mirrored \
--stop-mode crash \
--chaos-actions false \
--consumer-actions true \
--consumer-min-interval 10 \
--consumer-max-interval 10 \
--sac true \
--new-cluster true 2>&1 | tee logs/$TEST_NAME/test_run.log