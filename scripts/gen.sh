#!/bin/bash

ONTOLOGY_FILE="tao.owl"

rm -rf docs/

# Generate docs with widoco
java -jar widoco.jar -ontFile $ONTOLOGY_FILE -outFolder docs -getOntologyMetadata -oops -rewriteAll -webVowl -noPlaceHolderText
mv docs/index-en.html docs/index.html
mv docs/OOPSevaluation docs/oops
mv docs/oops/oopsEval.html docs/oops/index.html


# Generate docs with Ontospy
mkdir -p docs/browse
ontospy gendocs -o docs/browse --type 2 --preflabel label --nobrowser docs/ontology.rdf

# Alternative ontospy visualizations (e.g. tree and graph)
# ontospy gendocs -o docs/tree --type 4 --preflabel label --nobrowser $ONTOLOGY_FILE
# ontospy gendocs -o docs/graph --type 10 --preflabel label --nobrowser $ONTOLOGY_FILE


# Add "Browse with Ontospy" button
find docs/index.html -type f -exec sed -i "s/alt=\"Visualize with WebVowl\" \/><\/a><\/dd>/alt=\"Visualize with WebVowl\" \/><\/a>\n<a href=\"browse\" target=\"_blank\"><img src=\"https:\/\/img.shields.io\/badge\/Browse_with-Ontospy-orange.svg\" alt=\"Browse with Ontospy\" \/><\/a><\/dd>/g" {} +

# Add "Evaluate with OOPS" button
find docs/index.html -type f -exec sed -i "s/<!-- <dt>Evaluation:<\/dt><dd><a href=\"OOPSEvaluation\/oopsEval.html#/<dt>Evaluation:<\/dt><dd><a href=\"oops/g" {} +
find docs/index.html -type f -exec sed -i "s/<\/dd> -->/<\/dd>/g" {} +
