instance_create_layer((199),(1671),"Enemy_Layer",object_enemyspawn_easy)
alarm[0]=spawnrate;
spawnrate = max(100,420 - 100*(global.thescore div 50))