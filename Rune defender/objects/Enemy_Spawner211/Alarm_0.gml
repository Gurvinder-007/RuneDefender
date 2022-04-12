instance_create_layer((199),(1671),"Enemy_Layer",object_enemyspawn_hard)
alarm[0]=spawnrate;
spawnrate = max(10,200 - 25*(global.thescore div 50))