CREATE STREAM ENVIRONMENT_DATA_KEYED AS \
SELECT STATIONREFERENCE + PARAMETERNAME AS COMPOSITE_KEY, \
       * \
FROM   ENVIRONMENT_DATA \
PARTITION BY COMPOSITE_KEY;
