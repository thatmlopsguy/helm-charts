{{/*
Common labels
*/}}

{{/*
  Pod security labels for Namespace
  Usage: {{ include "platform.podSecurityLabels" . | nindent 4 }}
*/}}
{{- define "platform.podSecurityLabels" -}}
pod-security.kubernetes.io/enforce: "baseline"
pod-security.kubernetes.io/enforce-version: {{ .Capabilities.KubeVersion.Version }}
pod-security.kubernetes.io/audit: "baseline"
pod-security.kubernetes.io/audit-version: {{ .Capabilities.KubeVersion.Version }}
pod-security.kubernetes.io/warn: "baseline"
pod-security.kubernetes.io/warn-version: {{ .Capabilities.KubeVersion.Version }}
{{- end }}

{{/*
  Merge commonLabels from values with resource-specific base labels.
  Usage: {{ include "platform.mergedLabels" (dict "name" $name "environment" $env) | nindent 4 }}
*/}}
{{- define "platform.mergedLabels" -}}
{{- $args := . -}}
{{- $root := $args.root | default . -}}
{{- $base := dict
    "app.kubernetes.io/name" $args.name
    "app.kubernetes.io/instance" $args.name
    "app.kubernetes.io/component" $args.component
    "app.kubernetes.io/part-of" $args.name
    "app.kubernetes.io/managed-by" "kro"
    "environment" $args.environment
    "team" $args.team
    "app" $args.name
  -}}
{{- $common := $root.Values.rgds.webapplication.commonLabels | default dict -}}
{{- $labels := merge $common $base -}}
{{- toYaml $labels | trimSuffix "\n" -}}
{{- end }}
