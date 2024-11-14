# Add a service account with RBAC permissions in a Kubernetes cluster

1. Create a cluster role named `cicd-cluster-role` which is able to
   - get, list, watch pods
   - get, list, watch daemonset
   - get, list, watch statefulset
2. Create a service account named `cicd-token` in namespace `cicd`
3. Bind the `cicd-cluster-role` to the `cicd-token` service account only access resources in the `cicd` namespace
