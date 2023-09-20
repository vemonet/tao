#!/bin/bash

ONTOLOGY_FILE="tao.owl"

rm -rf docs/

# Generate docs with widoco
java -jar widoco.jar -ontFile $ONTOLOGY_FILE -outFolder docs -getOntologyMetadata -oops -rewriteAll -webVowl -noPlaceHolderText
mv docs/index-en.html docs/index.html

# Generate JSON-LD context
java -jar owl2jsonld.jar https://raw.githubusercontent.com/vemonet/tao/main/tao.owl > docs/context.jsonld


# Generate docs with Ontospy
mkdir -p docs/browse
ontospy gendocs -o docs/browse --type 2 --preflabel label --nobrowser docs/ontology.owl

# Alternative ontospy visualizations (e.g. tree and graph)
# ontospy gendocs -o docs/tree --type 4 --preflabel label --nobrowser $ONTOLOGY_FILE
# ontospy gendocs -o docs/graph --type 10 --preflabel label --nobrowser $ONTOLOGY_FILE


# Add "Browse with Ontospy" button
find docs/index.html -type f -exec sed -i "s/alt=\"Visualize with WebVowl\" \/><\/a><\/dd>/alt=\"Visualize with WebVowl\" \/><\/a>\n<a href=\"browse\" target=\"_blank\"><img src=\"https:\/\/img.shields.io\/badge\/Browse_with-Ontospy-orange.svg\" alt=\"Browse with Ontospy\" \/><\/a><\/dd>/g" {} +

# Add favicon
find docs/index.html -type f -exec sed -i "s/<head>/<head>\n<link rel=\"icon\" type=\"image\/x-icon\" href=\"https:\/\/pubannotation.org\/favicon.ico\">/g" {} +

# Add JSON-LD Context button
find docs/index.html -type f -exec sed -i "s/alt=\"TTL\" \/><\/a> <\/span><\/dd>/alt=\"TTL\" \/><\/a> <\/span>\n<span><a href=\"context.jsonld\" target=\"_blank\"><img src=\"https:\/\/img.shields.io\/badge\/Context-JSON_LD-blue.svg\" alt=\"JSON-LD context\" \/><\/a> <\/span>\n<\/dd>/g" {} +
