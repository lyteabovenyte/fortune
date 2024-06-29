##### a simple docker image to save fortune quotes every 10 second to a html file

###### what's in there:
##### v1: emptyDir volume.
###### an emptyDir volume is used to share content between containers.
- [x] a dockerfile for the fortune image to use in your k8s pod
- [x] a bash shell script to write the quote from fortune command in /var/htdocs dir
- [x] the yaml manifest of the pod for k8s, plus a volume called html for both the web-server nginx serves from and html-generator to write the quotes to
###### Note:
- you may need to port-forward a port from your local machine to the pod using:
```
kubectl port-forward <your-pod-name> <your-desired-port>:80
``` 
- or you can also expose the pod through a service instead of port-forwarding (either LoadBalancer or NodePort)
- [x] the yaml manifest of the type LoadBalancer service for the pods to connect. 
###### Note:
- if you are using [Minikube](https://minikube.sigs.k8s.io/docs/) you can examine the externalIP of your services using the command below:
```
minikube service <your-loadbalancer-service-name>
```
then you should be forwarded to you browser at the externalIP page.

##### v2: gitRepo volume:
###### visit branch gitRepo of the repo
- [x] in this branch of versioning, we have a nginx web-server that mounts the default path(/usr/share/nginx/html) to a gitRepo contianing the html pages
