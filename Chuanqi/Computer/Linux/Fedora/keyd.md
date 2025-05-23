```shell
sudo dnf copr enable fmonteghetti/keyd
sudo dnf install keyd
```

https://copr.fedorainfracloud.org/coprs/alternateved/keyd/

put the config file into: `/etc/keyd/default.conf`
https://github.com/galahado/keyd_config/blob/master/default.conf

```sh
sudo systemctl enable keyd
sudo systemctl start keyd
```