#!/bin/bash

pandoc --from markdown --to html --output attach.html attach.md
pandoc --from markdown --to html --output build.html build.md
pandoc --from markdown --to html --output cli.html cli.md 
