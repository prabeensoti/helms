
`helm package booking-service/`
`helm repo index --url <github_repository_path> --merge index.yaml .`
## Add repo to k8s
`helm repo add myrepo <github_repository_path>`
## Search Repo
`helm search repo myrepo`
## install
`helm install <release> myrepo/obs-helm-chart -n <namespace>`
## delete
`helm delete <release> -n <namespace> `
## history and rollback
`helm history RELEASE –n <namespace> `
`helm rollback <release> [REVISION] -n <namespace> `