#!/bin/sh

LOOPBACK_ADDR=1.1.1.4
LOOPBACK_MASK=/32
IP_ADDR=10.1.1.10/30
ip addr flush dev lo
ip addr flush dev eth0

ip addr add ${LOOPBACK_ADDR}${LOOPBACK_MASK} dev lo
ip addr add ${IP_ADDR} dev eth0
ip link set eth0 up

ip link add br0 type bridge
ip link set br0 up

# VXLAN ID 10番
ip link add vxlan10 type vxlan id 10 local ${LOOPBACK_ADDR} dstport 4789 nolearning
ip link set vxlan10 up

ip link set vxlan10 master br0
ip link set eth1 master br0
ip link set eth1 up
