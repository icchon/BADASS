#!/bin/sh

# 1. VXLANをブリッジから解放して削除
if ip link show vxlan10 >/dev/null 2>&1; then
    echo "Removing vxlan10..."
    ip link set vxlan10 nomaster 2>/dev/null
    ip link delete vxlan10 2>/dev/null
fi

# 2. ホスト側の物理ポート（eth1）をブリッジから解放
if ip link show eth1 >/dev/null 2>&1; then
    echo "Disconnecting eth1 from bridge..."
    ip link set eth1 nomaster 2>/dev/null
    ip link set eth1 down 2>/dev/null
fi

# 3. ブリッジ（br0）を停止して削除
if ip link show br0 >/dev/null 2>&1; then
    echo "Deleting bridge br0..."
    ip link set br0 down 2>/dev/null
    ip link delete br0 2>/dev/null
fi
