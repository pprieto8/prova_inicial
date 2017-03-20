#!/bin/bash

pandoc  \
	--from markdown \
	--to html \
	--output attach.xhtml \
	--standalone \
	attach.md

pandoc  \
	--from markdown \
	--to html \
	--output build.xhtml \
	--standalone \
	build.md
	
pandoc  \
	--from markdown \
	--to html \
	--output cli.xhtml \
	--standalone \
	cli.md

xmllint \
	--noout \
	--valid attach.xhtml

xmllint \
	--noout \
	--valid cli.xhtml
	
xmllint \
	--noout \
	--valid build.xhtml
