# kPow Helm // Kubernetes

Helm configuration to  get you running with kPow for Apache Kafka in a Kubernetes in *five minutes or less*. 

Once deployed access the kPow UI on port 3000 with kubectl port-forwarding or change the service/type in [kpow-io/values.yaml](kpow-io/values.yaml).

This Helm chart uses the latest [operatr/kpow](https://hub.docker.com/r/operatr/kpow) container from Dockerhub.

## Get Yourself Ready

* Get a [free 30-day trial license](https://kpow.io/try) of kPow.
* Check out this repository & CD into this directory.
* Find out your Kafka Bootstrap URL.

## Get kPow Running

### Update Kubernetes Config

```bash
aws eks --region <your-aws-region> update-kubeconfig --name <your-eks-cluster-name>

Updated context arn:aws:eks:<your-aws-region>:123123123:cluster/<your-eks-cluster-name> in /your/.kube/config
```

### Confirm Kubernetes Cluster Availability

```bash
$ kubectl get svc

NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   12.345.6.7   <none>        443/TCP   28h
```

### Update kPow Helm Configuration

Update [kpow-io/templates/kpow-io-config.yaml](kpow-io/templates/kpow-io-config.yaml) with your specific environment configuration.

The minimum information required by kPow to operate is:

* License parameters
* Kafka Bootstrap URL

See [kPow Documentation](https://docs.kpow.io) for a full list of configuration options.

### Install kPow with Helm

```bash
$ helm install kpow-io kpow-io/

NAME: kpow-io
LAST DEPLOYED: Tue Jul 28 22:35:30 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=kpow-io,app.kubernetes.io/instance=kpow-io" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:3000 to use your application"
  kubectl --namespace default port-forward $POD_NAME 3000:3000
  ```
  
### Access the kPow UI

Follow the instructions in the notes (above) to configure port forwarding. kPow is now available on [http://127.0.0.1:3000](http://127.0.0.1:3000).

### Check the kPow Pod

```bash
$ kubectl describe pods

Name:           kpow-io-688bbc74-lrm6x
Namespace:      default
Priority:       0
Node:           <none>
Labels:         app.kubernetes.io/instance=kpow-io
                app.kubernetes.io/name=kpow-io
                pod-template-hash=688bbc74
Annotations:    kubernetes.io/psp: eks.privileged
Status:         Pending
...
```

### View the kPow Pod Logs

```bash
kubectl logs kpow-io-688bbc74-lrm6x

11:36:49.111 INFO  [main] operatr.system ? start kPow
...
...
```

### Remove kPow

```bash
$ helm delete kpow-io
```

### Get Help!

If you have any issues or errors, please contact support@operatr.io.
