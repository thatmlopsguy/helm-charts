# helm-charts

[![Lint and Test Charts](https://github.com/thatmlopsguy/helm-charts/actions/workflows/ci.yml/badge.svg)](https://github.com/thatmlopsguy/helm-charts/actions/workflows/ci.yml)
[![Release Charts](https://github.com/thatmlopsguy/helm-charts/actions/workflows/chart-release.yml/badge.svg)](https://github.com/thatmlopsguy/helm-charts/actions/workflows/chart-release.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Helm Charts for various Applications

## Usage

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
$ helm repo add thatmlopsguy https://thatmlopsguy.github.io/helm-charts
$ helm repo update

$ helm search repo -l thatmlopsguy
NAME                                    CHART VERSION   APP VERSION     DESCRIPTION
thatmlopsguy/cert-manager-extras        0.1.0           v0.1.0          A Helm chart to install a Cert Manager CA
thatmlopsguy/gatewayclass               0.1.2           1.16.0          A Helm chart for installing the Gateway API Gat...
thatmlopsguy/metallb-extras             0.1.1           1.16.0          A Helm chart for installing MetalLB extras, inc...
thatmlopsguy/tenant-namespace           0.1.5                           A Helm Chart to bootstrap a Namespace in a Mult...
thatmlopsguy/tenant-namespace           0.1.4                           A Helm Chart to bootstrap a Namespace in a Mult...
thatmlopsguy/tenant-namespace           0.1.3                           A Helm Chart to bootstrap a Namespace in a Mult...
thatmlopsguy/tenant-namespace           0.1.2                           A Helm Chart to bootstrap a Namespace in a Mult...
thatmlopsguy/tenant-namespace           0.1.1                           A Helm Chart to bootstrap a Namespace in a Mult...

```

You can then run `helm search repo thatmlopsguy` to see the current list of available charts.

## Contributing

We'd love to have you contribute! Please refer to our [contribution guidelines](https://github.com/thatmlopsguy/helm-charts/blob/main/CONTRIBUTING.md) for details.

## License

[Apache License](LICENSE)
