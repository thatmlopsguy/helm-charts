# tenant-namespace

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm Chart to bootstrap a Namespace in a Multi-Tenancy setup

**Homepage:** <https://github.com/thatmlopsguy/helm-charts>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` | String to fully override `"tenant-namespace.fullname"` |
| limitRange.additionalAnnotations | object | `{}` | Annotations to be added to the LimitRange |
| limitRange.additionalLabels | object | `{}` | Labels to be added to the LimitRange |
| limitRange.enabled | bool | `false` | - create a LimitRange resource |
| limitRange.limits | list | `[]` | define the list of limits |
| limitRange.name | string | `""` | The name of the LimitRange to be created. If left empty will simply use the Release name. |
| nameOverride | string | `""` | Provide a name in place of `tenant-namespace` |
| namespace.annotations.additionalAnnotations | object | `{}` | Annotations to be added to the Namespace |
| namespace.annotations.scheduler.defaultTolerations | list | `[]` | This annotation requires the PodTolerationRestriction admission controller to be enabled. This annotation key allows assigning tolerations to a namespace and any new pods created in this namespace would get these tolerations added. |
| namespace.annotations.scheduler.nodeSelector | string | `""` | The PodNodeSelector uses this annotation key to assign node selectors to pods in namespaces. |
| namespace.annotations.scheduler.tolerationsWhitelist | list | `[]` | This annotation requires the PodTolerationRestriction admission controller to be enabled. The annotation value is a JSON document that defines a list of allowed tolerations for the namespace it annotates. When you create a Pod or modify its tolerations, the API server checks the tolerations to see if they are mentioned in the allow list. The pod is admitted only if the check succeeds. |
| namespace.enabled | bool | `false` | - create a Namespace resource |
| namespace.labels.additionalLabels | object | `{}` | Labels to be added to the Namespace |
| namespace.labels.podSecurityAdmission.audit.standard | string | `""` | Value must be one of privileged, baseline, or restricted which correspond to Pod Security Standard levels. |
| namespace.labels.podSecurityAdmission.audit.version | string | `""` | Version label that can be used to pin the policy to the version that shipped with a given Kubernetes minor version (for example v1.27). |
| namespace.labels.podSecurityAdmission.enforce.standard | string | `""` | Value must be one of privileged, baseline, or restricted which correspond to Pod Security Standard levels. |
| namespace.labels.podSecurityAdmission.enforce.version | string | `""` | Version label that can be used to pin the policy to the version that shipped with a given Kubernetes minor version (for example v1.27). |
| namespace.labels.podSecurityAdmission.warning.standard | string | `""` | Value must be one of privileged, baseline, or restricted which correspond to Pod Security Standard levels. |
| namespace.labels.podSecurityAdmission.warning.version | string | `""` | Version label that can be used to pin the policy to the version that shipped with a given Kubernetes minor version (for example v1.27). |
| namespace.name | string | `""` | The Name of the newly created namespace. Uses the Release name be default. |
| networkPolicies.additionalAnnotations | object | `{}` | Annotations to be added to the NetworkPolicies |
| networkPolicies.additionalLabels | object | `{}` | Labels to be added to the NetworkPolicies |
| networkPolicies.egress.allow.dns.enabled | bool | `true` | create a NetworkPolicy that allows outgoing traffic to the Kubernetes DNS |
| networkPolicies.egress.allow.dns.namespace | string | `"kube-system"` | The namespace where the Kubneretes DNS is running |
| networkPolicies.egress.allow.dns.podLabels | object | `{"k8s-app":"kube-dns"}` | The labels of the Kubernetes DNS |
| networkPolicies.egress.allow.dns.podSelector | object | `{}` | define a PodSelector that should be used. Uses all Pods by default |
| networkPolicies.egress.deny.all.enabled | bool | `true` | create a NetworkPolicy that denies all outgoing traffic |
| networkPolicies.egress.deny.all.podSelector | object | `{}` | define a PodSelector that should be used. Uses all Pods by default |
| networkPolicies.enabled | bool | `false` | - create NetworkPolicy resources to limit the allowed traffic |
| networkPolicies.ingress.deny.all.enabled | bool | `true` | create a NetworkPolicy that denies all incoming traffic |
| networkPolicies.ingress.deny.all.podSelector | object | `{}` | define a PodSelector that should be used. Uses all Pods by default |
| resourceQuotas | object | `{"additionalAnnotations":{},"additionalLabels":{},"enabled":false,"quotas":[]}` | define a list of ResourceQuotas that should be created |
| resourceQuotas.additionalAnnotations | object | `{}` | Annotations to be added to the LimitRange |
| resourceQuotas.additionalLabels | object | `{}` | Labels to be added to the LimitRange |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
