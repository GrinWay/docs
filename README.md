grinway/docs
========

# Installation

### [Before git clone](https://github.com/GrinWay/docs/blob/main/docs/bundles_grin_symfony%20mkdir.md)

```console
git clone "https://github.com/GrinWay/docs.git"
```


For Symfony Applicatins
------

# `grinway` bundles installator helper

Execute in your `%kernel.project_dir%`:

```console
cp "./bundles/grinway/docs/shell exec/deploy" "./public/deploy" -rp
```

### see the content of: `%kernel.project_dir%/public/deploy/*` files (change if you need it)

Create `%kernel.project_dir%/init.sh` by executing:
```console
echo 'bash "./public/deploy/install-grinway-bundles.sh"' > "./init.sh"
```

### always execute `./init.sh` from `%kernel.project_dir%`

When you execute the following command it'll help you to install all the bundles you described in the `%kernel.project_dir%/public/deploy/install-grinway-bundles.sh`
```console
bash "./init.sh"
```

Alternatively, do the same:
```console
./init.sh
```

# You can also borrow various sections of the `ROOT/git/.gitignore` file

For instance to safe `%kernel.project_dir%/vendor/symfony/http-kernel/Kernel.php` for Kernel::build()