#!/bin/bash

read -p "Name your app: " app
$app >/dev/null 2>&1 &   
