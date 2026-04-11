{{/*
Return a `matchLabels` block for a given app name.
Usage:
	{{ include "kro-rgds.matchLabels" "my-app" | indent 10 }}
*/}}
{{- define "kro-rgds.matchLabels" -}}
matchLabels:
  app: {{ . }}
{{- end }}

