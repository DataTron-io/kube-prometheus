local kp =
  (import 'kube-prometheus/kube-prometheus.libsonnet') +
  grafana+: {
    deployment+: {
      spec+: {
        template+: {
          spec+: {
            imagePullSecrets: [{name: $._config.registry.secret_name}],
          }
        }
      }
    }
  },
  grafana+: {
    deployment+: {
      spec+: {
        template+: {
          spec+: {
            imagePullSecrets: [{name: $._config.registry.secret_name}],
          }
        }
      }
    }
  },
  grafana+: {
    deployment+: {
      spec+: {
        template+: {
          spec+: {
            imagePullSecrets: [{name: $._config.registry.secret_name}],
          }
        }
      }
    }
  },