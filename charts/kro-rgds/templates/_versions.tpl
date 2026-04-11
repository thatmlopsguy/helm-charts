{{/*
Return the target Kubernetes version
*/}}
{{- define "kro.kubeVersion" -}}
{{- default .Capabilities.KubeVersion.Version .Values.kubeVersionOverride }}
{{- end }}
