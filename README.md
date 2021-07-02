# BP-Interact-backup
Blue Prism Interact has 10+ components, each of those contains own configuration files. 
Script backups all .json and .config files before upgrades or configuration changes.

# Usage
## Assumptions
BP Interact is installed with default settings (e.g. install directory).

## How to use?
1. Choose directory for backup
2. Copy backup_interact_configs.bat there
3. Execute script

## What's backed up and where?
1. Script creates folder _<..>\allInteract\YYYY-MM-DD_hh-mm-ss\\_
2. Goes through Interact folders (hardcoded in script)
3. Copies .json and .config files to appropriate directory (e.g. from _C:\Program Files (x86)\Blue Prism\Hub_ to _D:\backup\allInteract\2021-01-01_07-00-00\Hub_)
