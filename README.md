# KubernetesSecrets

Easily encode and decode values for your Kubernetes secrets.

### Encode Kubernetes Secret Value to Base64

```sh
🚀 ./encodeValue.sh --help
Usage: ./encodeValue.sh [options]
  -h, --help                  Help
  -v, --value                 Secret value to encode

  ex. ./encodeValue.sh --value admin
```

```sh
🚀 ./encodeValue.sh --value admin
2021-01-28 12:38:34 [INFO] [encodeValue.sh] ENCODE KUBERNETES SECRET VALUE TO BASE64...
YWRtaW4K
```

### Decode Base64 Kubernetes Secret Value

```sh
🚀 ./decodeValue.sh --help
Usage: ./decodeValue.sh [options]
  -h, --help                  Help
  -v, --value                 Secret value to decode

  ex. ./decodeValue.sh --value YWRtaW4=
```

```sh
🚀 ./decodeValue.sh --value YWRtaW4=
2021-01-28 12:40:03 [INFO] [decodeValue.sh] DECODE BASE64 KUBERNETES SECRET VALUE...
admin
```
