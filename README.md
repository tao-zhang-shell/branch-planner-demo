# branch-planner-demo

```bash
cat <<EOF | kubectl apply -f -
---
apiVersion: source.toolkit.fluxcd.io/v1
kind: GitRepository
metadata:
  name: branch-planner-demo
  namespace: flux-system
spec:
  interval: 30s
  url: https://github.com/tf-controller/branch-planner-demo
  ref:
    branch: main
---
apiVersion: infra.contrib.fluxcd.io/v1alpha2
kind: Terraform
metadata:
  name: branch-planner-demo
  namespace: flux-system
spec:
  path: ./
  approvePlan: auto
  interval: 1m
  sourceRef:
    kind: GitRepository
    name: branch-planner-demo
    namespace: flux-system
EOF
```
