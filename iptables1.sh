#!/bin/bash

#清空iptables规则
iptables -F

#设置默认策略
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

#放行规则
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A OUTPUT -p udp --sport 53 -j ACCEPT
