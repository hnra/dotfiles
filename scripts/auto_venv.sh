#!/usr/bin/env bash

if [ -e '.venv' ]; then
    hash deactivate 2> /dev/null && deactivate
    source ./.venv/bin/activate
fi

if [ -e '../.venv' ]; then
    hash deactivate 2> /dev/null && deactivate
    source ../.venv/bin/activate
fi

