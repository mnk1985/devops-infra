#!/bin/sh
cd ~
wget -O - https://gist.githubusercontent.com/mnk1985/059b4e302553584f1e59134d1ebcbb4b/raw/706e5f8e6cf0eb8f9dbca872ba8288166cba389c/devops_config-scripts_install_ruby.sh | bash
wget -O - https://gist.githubusercontent.com/mnk1985/5f94a6a136bf0e46419f05a7ec96a7f1/raw/0ca504a502f2a21ad1a65e587c1b135e8b02ce54/devops_config-scripts_install_mongodb.sh | bash
wget -O - https://gist.githubusercontent.com/mnk1985/45cbd7d303cd770a0711484b7ef2c7d2/raw/e903845d52418a9efd8a1a07a80f0572982d9481/devops_config-scripts_deploy.sh | bash