##### a simple docker image to save fortune quotes every 10 second to a html file

###### what's in there:
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