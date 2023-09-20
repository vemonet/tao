# ✒️ Text Annotation Ontology

[![Update documentation website](https://github.com/vemonet/tao/actions/workflows/publish.yml/badge.svg)](https://github.com/vemonet/tao/actions/workflows/publish.yml)

A repository to publish documentation for the **Text Annotation Ontology**, used by [pubannotation.org](http://pubannotation.org)

The original ontology was published at http://pubannotation.org/ontology/tao.owl. It has now disappeared. Good thing I cloned it here, seems like I am the official repository now 👀

The ontology hosted on this repository has been slightly modified with Protégé 5.5.0 to add ontology metadata (license, label, description, preferred prefix and namespace). I contacted the original authors of the ontology by email to validate we could use the cc-by license for this ontology.

I wish I could send a PR to the original repository that was created at https://github.com/pubannotation/tao, but since the repository is empty GitHub prevents me from sending a PR.

♻️ The documentation website hosted at [vemonet.github.io/tao](https://vemonet.github.io/tao) is automatically updated by a GitHub Action at every change to the ontology file.

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

Start a web server to check the generated docs locally:

```bash
./scripts/start.sh
```