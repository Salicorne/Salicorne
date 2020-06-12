alias k='kubectl'
alias kg='kubectl get'
alias ka='kubectl apply'
alias kl='kubectl logs --tail 100'
alias ke='kubectl exec -it'
alias kdesc='kubectl describe'
alias kdel='kubectl delete'
alias ktop='kubectl top'
alias ktopp='kubectl top pods --all-namespaces'
alias kns='kubectl config set-context --current --namespace'
alias kx='kubectl config use-context'
alias dc='docker-compose'

alias stern='stern --since 1m --template "{{.Namespace}}/{{color .PodColor .PodName}}/{{color .ContainerColor .ContainerName}} {{.Message}}" --all-namespaces'

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

if [ $commands[linkerd] ]; then
  source <(linkerd completion zsh)
fi

if [ $commands[helm] ]; then
  source <(helm completion zsh)
fi

if [ $commands[stern] ]; then
  source <(stern --completion=zsh)
fi
