#!/usr/bin/env bash

ADDRESSES=(
    'http://13.235.91.150:8080/petclinic/' #Here you insert addresses to test :D
)

function checkAddress
{
    ADDRESS=$1
    if curl -Is "${ADDRESS}" | grep -q 200; then
        echo "${ADDRESS} ok!/app up"
    else
        echo "${ADDRESS} fail!/app down"
        exit
    fi
}

for ADDRESS in "${ADDRESSES[@]}"; do
    checkAddress "${ADDRESS}"
done
