#!/bin/bash

sudo ip route del 10.0.0.0/24
sudo ip route add 10.0.0.0/24 dev vnet0

sudo ip route del 10.0.1.0/24
sudo ip route add 10.0.1.0/24 dev vnet1
