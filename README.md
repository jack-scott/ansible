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