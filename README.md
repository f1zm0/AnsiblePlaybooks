# Playbooks

## Usage

Run playbooks:
```bash
ansible-playbook \
    -i inventories/<type>/hosts.ini \
    playbooks/<playbook> \
    [--tags tag1,tag2,...]
```
