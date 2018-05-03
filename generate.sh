#!/usr/bin/env bash
swagger-codegen generate -i https://api.rokka.io/doc.json -l ruby -o . -c config.json
patch -p1 < patches/*.patch