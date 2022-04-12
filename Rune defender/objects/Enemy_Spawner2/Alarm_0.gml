instance_create_layer((199),(1671),"Enemy_Layer",object_enemyspawn)
alarm[0]=spawnrate;
spawnrate = max(50,310 - 50*(global.thescore div 50))