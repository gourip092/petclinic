#!/usr/bin/env bash

ADDRESSES=(
    'http://15.207.116.153:8080/petclinic/' #Here you insert addresses to test :D
)

function checkAddress
{
    ADDRESS=$1
    if curl -Is "${ADDRESS}" | grep -q 200; then
        echo "${ADDRESS} ok!"
    else
        echo "${ADDRESS} fail!"
        exit
    fi
}

for ADDRESS in "${ADDRESSES[@]}"; do
    checkAddress "${ADDRESS}"
done