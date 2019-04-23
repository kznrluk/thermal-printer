#!/bin/bash
set -eu
API_ENDPOINT=http://localhost:3031
cd -- `dirname -- $0`
curl \
  --verbose \
  --request POST \
  --header "Content-Type: application/json" \
  --data-binary @empty_html.json \
  ${API_ENDPOINT}/render_html > empty_html.png
