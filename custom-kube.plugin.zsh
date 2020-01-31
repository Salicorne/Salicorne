alias k='kubectl'
alias kg='kubectl get'
alias ka='kubectl apply'
alias kl='kubectl logs'
alias ke='kubectl exec -it'
alias kdesc='kubectl describe'
alias kdel='kubectl delete'
alias ktop='kubectl top'
alias ktopp='kubectl top pods --all-namespaces'
alias k8s-set-namespace='kubectl config set-context --current --namespace'
alias dc='docker-compose'

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

if [ $commands[linkerd] ]; then
  source <(linkerd completion zsh)
fi

if [ $commands[helm] ]; then
  source <(helm completion zsh)
fi
