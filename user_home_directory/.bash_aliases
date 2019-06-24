#!/bin/bash

alias b='cd -'
PATH=$PATH:/home/dais/miniconda3/bin

alias aws='ssh -i /home/dais/WebstormProjects/aws_site/aws_site_key_pair.pem ubuntu@ec2-35-180-205-87.eu-west-3.compute.amazonaws.com'
alias dl='conda activate dl; jupyter lab'
alias server-connect='ssh -J sdaisp@csl2.cs.technion.ac.il sdaisp@rishon.cs.technion.ac.il'
alias server-upload-files="rsync -Cavz -e 'ssh -A -J sdaisp@csl2.cs.technion.ac.il' /home/dais/PycharmProjects/cs236605-hw2 sdaisp@rishon.cs.technion.ac.il:/home/sdaisp"
alias server-download-files="rsync -Cavz -e 'ssh -A -J sdaisp@csl2.cs.technion.ac.il' sdaisp@rishon.cs.technion.ac.il:/home/sdaisp/cs236605-hw2 /home/dais/PycharmProjects"

alias server-u='server-upload-files; server-connect'
alias server-d='server-download-files; server-connect'

jupyteraddress='132.68.39.30:8888'
alias access-jupyter="ssh -L 9999:$jupyteraddress -J sdaisp@csl2.cs.technion.ac.il sdaisp@rishon.cs.technion.ac.il;"
alias myaliases="vim ~/.bash_aliases"
alias mybashrc="vim ~/.bashrc"
alias popki='ssh -i /home/dais/popki-site/ec2-key-pair.pem ec2-user@35.181.50.141'
