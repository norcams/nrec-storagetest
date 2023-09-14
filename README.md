# NREC Storage tests

## Terraform

## Ansible

Require Python 3.9+

### Install

``` bash
cd ansible
python3.11 -m venv .
source bin/activate
pip install --upgrade pip
pip install -r requirements.txt
ansible-galaxy install -r requirements.yaml
```

### Update

``` bash
ansible-galaxy install -r requirements.yaml --force
```
