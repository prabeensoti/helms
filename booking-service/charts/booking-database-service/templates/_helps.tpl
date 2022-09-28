/*
Create a default fully qualified app name.
*/
{{- define "service.fullname" -}}
{{ .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
/*
Create the name of the service account to use
*/
{{- define "service.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "service.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}