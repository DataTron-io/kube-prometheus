local kp =
  (import 'kube-prometheus/kube-prometheus.libsonnet') +
  prometheus+: {
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
  alertmanager+: {
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

