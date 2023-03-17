# Generate KOPS Manifest
Set up environment variables for the cluster
```bash
export NAME=<subdomain>.<domain>
```
Replace `<subdomain>` and `<domain>` with the subdomain and domain you want to use for the cluster.

To generate the KOPS manifest, run the following command:
```bash
kops get $NAME -o yaml > $NAME.yaml
```

You can now edit the manifest to your liking.

THe manifest can then be imported by kops using the following command:
```bash
kops replace --force -f $NAME.yaml
```