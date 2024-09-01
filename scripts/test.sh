#!/bin/bash

read FIRST_NAME

if [[ $FIRST_NAME = Ali ]]; then
  echo your the owner
else
  echo you are not the owner
fi
