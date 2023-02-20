# ✒️ Text Annotation Ontology

A repository to publish documentation for the [Text Annotation Ontology](http://pubannotation.org/ontology/tao.owl), published at http://pubannotation.org/ontology/tao.owl

The documentation website hosted at [vemonet.github.io/tao](https://vemonet.github.io/tao) is automatically updated by a GitHub Action at every change to the ontology file.

## 📖 Generate the docs locally

Make sure Java and python >3.8 are installed. We recommend to enable a python virtual environment.

Install the dependencies:

```bash
./scripts/install.sh
```

Generate the docs:

```bash
./scripts/gen.sh
```

Start a web server to check the generated docs:

```bash
./scripts/start.sh
```