CREATE TABLE nginx ( logdate Date, logdatetime DateTime,  hostname String, syslogtag String,  message String, clientip String, ident String,  auth String,  verb String, request String, httpv String, response UInt16, bytes UInt64, referrer String, agent String, blob String ) Engine = MergeTree() PARTITION BY toYYYYMMDD(logdate) ORDER BY (logdate, logdatetime) SETTINGS index_granularity=8192
