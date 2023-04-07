#!/bin/bash

echo "Preparing dist folder"
rm -r ./dist/ || true
mkdir ./dist

cp static/favicon.ico ./dist/favicon.ico
cp node_modules/@webcomponents/webcomponentsjs/webcomponents-bundle.js ./dist/webcomponents-bundle.js
cp node_modules/@asyncapi/web-component/lib/asyncapi-web-component.js ./dist/asyncapi-web-component.js
cp node_modules/@asyncapi/react-component/styles/default.min.css ./dist/default.min.css

echo "Done"