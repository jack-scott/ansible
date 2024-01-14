# ansible
Ansible play book for personal PC setup


## Pre-steps
Install pipx
```
python3 -m pip install --user pipx
python3 -m pipx ensurepath
sudo apt install python3.10-venv
```

Install ansible
```
pipx install --include-deps ansible
```


## Run playbook

```
ansible-pull https://github.com/jack-scott/ansible.git
```

Or if you already have the files locally you can run

```
ansible-playbook local.yml
```

There is some sort of permissions issue going on, sometimes on the first run you need to use `sudo` however there are some guards around bits of the playbook that we need to run without `sudo` for now run with `sudo` for the first go around if required and then run without after that.

## Troubleshooting a new setup

### Chrome tabs using 100% CPU

To verify this is the same cause bring up htop, press F4 to filter and then type `chrome --type=gpu` if you are seeing this process use 100% CPU without anything running in the browser then you can try changing your graphics driver.

Go to `Software and updates` and click on the additional drivers tab. Assuming you have Nvidia hardware, change from the default Nouveau driver to the recomended Nvidia.
![gpu settings](resources/gpu_driver_settings.png)

Reboot system and test again.