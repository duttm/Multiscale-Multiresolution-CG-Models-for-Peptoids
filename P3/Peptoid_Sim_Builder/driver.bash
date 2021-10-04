#!/bin/bash

##usage: first => manually edit the topology file => mention the number of peptoids 

##./driver.bash <box dimensions> <number of peptoids to add>

b=$1

add=$2

./model_0_1.bash $b $add

./model_1.bash $add

./model_2.bash
