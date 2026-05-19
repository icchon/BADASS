REMOTE_IP=10.1.1.1
# 1. 仮想ブリッジ "br0" を作成して起動 
ip link add br0 type bridge
ip link set br0 up

# 2. VXLANインターフェース "vxlan10" を作成
# (スイッチ側を向いている eth0 を指定し、対向の router2「10.1.1.1」へトンネルを掘る)
ip link add vxlan10 type vxlan id 10 dev eth0 remote ${REMOTE_IP} dstport 4789
ip link set vxlan10 up

# 3. host1 と繋がっているインターフェース（eth1）をブリッジに追加
ip link set eth1 master br0
ip link set eth1 up

# 4. 作成した vxlan10 も同じブリッジに追加してガッチャンコする
ip link set vxlan10 master br0
