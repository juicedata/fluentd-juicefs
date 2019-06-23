# fluentd-juicefs

将 fluentd 收集的 Kubernetes 集群日志归档到 JuiceFS。

1. [创建 JuiceFS 文件系统](https://juicefs.com/console/create)用于保存历史日志。
2. 在 Kubernetes 集群中创建 `Secret` 保存相关密钥，[参见样例](kubernetes/example-secret.yaml)。
3. 部署 fluentd 服务
4. JuiceFS 已集成在 juicedata/fluentd-juicefs 镜像中，无需额外步骤

```s
kubectl apply -f https://raw.githubusercontent.com/juicedata/fluentd-juicefs/master/kubernetes/fluentd-juicefs.yaml
```

集群日志将被自动归档到指定 JuiceFS 文件系统的 `/fluentd` 目录下。
