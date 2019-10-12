#!/bin/bash

artist=$(playerctl metadata | grep artist)
title=$(playerctl metadata | grep title)
echo "  ${title:35}:  ${artist:35}"