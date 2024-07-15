Env-processors usage
--------

In your `%kernel.project_dir%/config/services.yaml`

```yaml
parameters:
    your_namespace.your_parameter: '%env(ENV_PROCESSOR_NAME:YOUR_ENV_VARIABLE)%'

services:
    _defaults:
        bind:
            $yourEnvVariable: '%env(ENV_PROCESSOR_NAME:YOUR_ENV_VARIABLE)%'
```