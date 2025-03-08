# Helm charts

[![Lint and Test Charts](https://github.com/thatmlopsguy/helm-charts/actions/workflows/ci.yml/badge.svg)](https://github.com/thatmlopsguy/helm-charts/actions/workflows/ci.yml)
[![Release Charts](https://github.com/thatmlopsguy/helm-charts/actions/workflows/chart-release.yml/badge.svg)](https://github.com/thatmlopsguy/helm-charts/actions/workflows/chart-release.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Helm Charts for various Applications

## Usage

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
helm repo add thatmlopsguy https://thatmlopsguy.github.io/helm-charts 
helm repo update
```

You can then run `helm search repo thatmlopsguy` to see the current list of available charts.

## License

[Apache License](LICENSE)