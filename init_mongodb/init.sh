#sleep 5
su --command "mongo --host config1 --port 27019 < /data/s1_initdb_configserver.json" &
su --command "mongo --host shard1n1 --port 27020 < /data/s2_initdb_shard1nxxx.json" &
#su --command "mongo --host shard2n1 --port 27020 < /data/s2_initdb_shard2nxxx.json" &
#sleep 20
##su --command "mongos --configdb configserver/config1:27019,config2:27019 --port 27081" &
sleep 40
su --command "mongo --host router1 --port 27081 < /data/s3_initdb_indexkey.json" &