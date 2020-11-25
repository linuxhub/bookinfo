# bookinfo

![](https://raw.githubusercontent.com/linuxhub/bookinfo/main/bookinfo.jpg)

```bash

$ kubectl get deployment
NAME             READY   UP-TO-DATE   AVAILABLE   AGE
details-v1       1/1     1            1           17h
productpage-v1   1/1     1            1           17h
ratings-v1       1/1     1            1           17h
reviews-v1       1/1     1            1           17h
reviews-v2       1/1     1            1           17h
reviews-v3       1/1     1            1           17h

$ kubectl get svc
NAME          TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
details       ClusterIP   172.21.14.186   <none>        9080/TCP   17h
kubernetes    ClusterIP   172.21.0.1      <none>        443/TCP    5d9h
productpage   ClusterIP   172.21.5.10     <none>        9080/TCP   17h
ratings       ClusterIP   172.21.7.53     <none>        9080/TCP   17h
reviews       ClusterIP   172.21.6.146    <none>        9080/TCP   17h


$ kubectl get pod
NAME                              READY   STATUS    RESTARTS   AGE
details-v1-85b967b984-ksh9g       2/2     Running   0          17h
productpage-v1-6b468c5b9c-gqgpw   2/2     Running   0          17h
ratings-v1-67756f768d-z9lks       2/2     Running   0          17h
reviews-v1-78b574cd56-8trlk       2/2     Running   0          17h
reviews-v2-7fcd64bbfd-dff86       2/2     Running   0          17h
reviews-v3-69ddfb9776-c9wgg       2/2     Running   0          17h

```

![](https://raw.githubusercontent.com/linuxhub/bookinfo/main/productpage.jpg)






