#!/bin/sh
sh change-infra.sh MyBatis3
sed -i -e "s/macchinetta-multi-web-blank-noorm-thymeleaf/macchinetta-multi-web-blank-thymeleaf/g" pom.xml
sed -i -e "s/macchinetta-multi-web-blank-noorm-thymeleaf/macchinetta-multi-web-blank-thymeleaf/g" create-maven-archetype.sh
sed -i -e "s|Web Blank Multi Project (No O/R Mapper)|Web Blank Multi Project|g" pom.xml
sh create-maven-archetype.sh "$1" "$2"