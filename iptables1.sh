#!/bin/bash
#清空iptables规则
iptables -F
#设置默认策略
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
