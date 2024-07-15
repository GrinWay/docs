Borrow binds
--------

After intalling the bundle check its `BUNDLE_ROOT/config/services.yaml`

```yaml
###> !BORROW THESE VALUES! ###
    WATCH_THIS_SECTION_OF_BUNDLE: 'WATCH_THIS_SECTION_OF_BUNDLE'
###< !BORROW THESE VALUES! ###
```

You can borrow this section in your `%kernel.project_dir%/config/services.yaml`
if you need it