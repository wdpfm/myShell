#!/bin/bash
#清空iptables规则
iptables -F
#关闭全部链路
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
