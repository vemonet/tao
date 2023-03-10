# ✒️ Text Annotation Ontology

[![Publish to GitHub Pages](https://github.com/pubannotation/tao/actions/workflows/publish.yml/badge.svg)](https://github.com/pubannotation/tao/actions/workflows/publish.yml)

A repository to publish **documentation for the [Text Annotation Ontology](http://pubannotation.org/ontology/tao.owl)**.

The original ontology is published at http://pubannotation.org/ontology/tao.owl. The version used to generate the documentation has been slightly modified with Protégé 5.5.0 to add ontology metadata (label, description, preferred prefix and namespace).

♻️ The documentation website hosted at [pubannotation.github.io/tao](https://pubannotation.github.io/tao) is automatically updated by a GitHub Action at every change to the ontology file.

## 📖 Generate the docs locally

<details><summary>Make sure Java ~17 and python >=3.8 are installed. We recommend to enable a python virtual environment.</summary>

Create the virtual environment:
```bash
python -m venv .venv
```

Activate the virtual environment:
```bash
source .venv/bin/activate
```
</details>

Install the dependencies:

```bash
./scripts/install.sh
```

Build the docs:

```bash
./scripts/build.sh
```

Start a web server to check the generated docs:

```bash
./scripts/start.sh
```