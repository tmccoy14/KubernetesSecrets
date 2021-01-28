# KubernetesSecrets

Easily encode and decode values for your Kubernetes secrets.

### Encode Kubernetes Secret Value to Base64

In order to create a Kubernetes secret with a [config file](https://kubernetes.io/docs/tasks/configmap-secret/managing-secret-using-config-file/) or directly with the [kubectl create secret command](https://kubernetes.io/docs/concepts/configuration/secret/), you first need to encode the secret values.

```sh
🚀 ./encodeValue.sh --help
Usage: ./encodeValue.sh [options]
  -h, --help                  Help
  -v, --value                 Secret value to encode

  ex. ./encodeValue.sh --value admin
```

```sh
🚀 ./encodeValue.sh --value admin
2021-01-28 12:51:37 [INFO] [encodeValue.sh] ENCODE KUBERNETES SECRET VALUE TO BASE64...
YWRtaW4K
```

### Decode Base64 Kubernetes Secret Value

In order to view and use the contents of the Kubernetes secret you created, you first need to decode the values.

```sh
🚀 ./decodeValue.sh --help
Usage: ./decodeValue.sh [options]
  -h, --help                  Help
  -v, --value                 Secret value to decode

  ex. ./decodeValue.sh --value YWRtaW4K
```

```sh
🚀 ./decodeValue.sh --value YWRtaW4K
2021-01-28 12:40:03 [INFO] [decodeValue.sh] DECODE BASE64 KUBERNETES SECRET VALUE...
admin
```
