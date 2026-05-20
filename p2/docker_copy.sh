docker cp router/router1_static.sh $(docker ps -q --filter "name=router_kaisobe-1"):/root

docker cp router/routerx_dynamic.sh $(docker ps -q --filter "name=router_kaisobe-1"):/root

docker cp router/clean.sh $(docker ps -q --filter "name=router_kaisobe-1"):/root

docker cp router/router2_static.sh $(docker ps -q --filter "name=router_kaisobe-2"):/root

docker cp router/routerx_dynamic.sh $(docker ps -q --filter "name=router_kaisobe-2"):/root

docker cp router/clean.sh $(docker ps -q --filter "name=router_kaisobe-2"):/root
