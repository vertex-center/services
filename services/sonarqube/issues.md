# Known issues

The volumes permissions are wrong. To fix, go to `live/instances/{uuid}` and execute:

```bash
sudo chown -R 1000:1000 volumes
```
