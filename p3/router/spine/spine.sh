#!/bin/sh

# 1. 既存のIP設定を完全にクリーンアップ
ip addr flush dev lo
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2

# 2. 自身のLoopbackアドレス（VTEP識別用）を設定
ip addr add 1.1.1.1/32 dev lo

# 3. 各Leafと繋がる物理ポートにIPアドレスを設定
# Leaf1
ip addr add 10.1.1.1/30 dev eth0
ip link set eth0 up

# Leaf2
ip addr add 10.1.1.5/30 dev eth1
ip link set eth1 up

# Leaf3
ip addr add 10.1.1.9/30 dev eth2
ip link set eth2 up
