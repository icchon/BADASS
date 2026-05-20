docker cp router/spine/spine.sh $(docker ps -q --filter "name=router_kaisobe-1"):/root

docker cp router/spine/spine.conf $(docker ps -q --filter "name=router_kaisobe-1"):/root

docker cp router/leaves/leaf1.sh $(docker ps -q --filter "name=router_kaisobe-2"):/root

docker cp router/leaves/leaf1.conf $(docker ps -q --filter "name=router_kaisobe-2"):/root

docker cp router/leaves/leaf2.sh $(docker ps -q --filter "name=router_kaisobe-3"):/root

docker cp router/leaves/leaf2.conf $(docker ps -q --filter "name=router_kaisobe-3"):/root

docker cp router/leaves/leaf3.sh $(docker ps -q --filter "name=router_kaisobe-4"):/root

docker cp router/leaves/leaf3.conf $(docker ps -q --filter "name=router_kaisobe-4"):/root
