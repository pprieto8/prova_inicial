#!/bin/bash

pandoc  \
	--from markdown \
	--to html \
	--output attach.html \
	--standalone \
	--template=template_pandoc.html \
	attach.md


pandoc  \
	--from markdown \
	--to html \
	--output build.html \
	--standalone \
	--template=template_pandoc.html \
	build.md
	
pandoc  \
	--from markdown \
	--to html \
	--output cli.html \
	--standalone \
	--template=template_pandoc.html \
	cli.md

xmllint \
	--noout \
	--valid attach.html

xmllint \
	--noout \
	--valid cli.html
	
xmllint \
	--noout \
	--valid build.html

TARGET=/home/users/inf/hisx2/isx47946514/gitlab/pprieto8.github.io/

cp -u attach.html build.html cli.html $TARGET


