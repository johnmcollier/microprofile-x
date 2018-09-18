## Microservice
IBM Cloud Microservice Starter for Java - MicroProfile / Java EE running on Jenkins-X Devpods

### Prerequisites
- Jenkins-X running on a Kubernetes cluster (see https://jenkins-x.io/getting-started/)
   - Doesn't work well on ICP currently, use Minikube or IKS for the time being
   
### How to run
1) Clone this repository and cd into it
2) Create a maven devpod by running `jx create devpod -l maven --sync`. Once the devpod comes up, you should be automatically exec'd into the devpod's shell
   - Devpod creation has a somewhat short "timeout". It won't fail, but the jx command will exit after 5 mimutes. If this happens, wait til the devpod is up (check with `kubectl get po --namespace jx`) and run `jx create devpod -l maven` again. It will re-use the devpod and copy the project over
3) Run `export GITUSER=<username>`
4) Run `watch.sh` to deploy the application and start the "watcher". It may take about a minute or so for the application to come up.
5) Run `jx get applications` to find the ingress address for the application. You can access the application at http://<ingress-host>/microprofile
