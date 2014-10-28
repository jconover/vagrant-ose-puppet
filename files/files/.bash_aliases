# random settings

set -o vi

PATH=$PATH:~/home/bin:/sbin:/usr/local/bin:/opt/puppet/bin

# random aliases

alias grep='grep --colour=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -la'
alias ltr='ls -ltr'
alias vi='vim'
alias tmux="TERM=screen-256color-bce tmux"
alias vms='vmstat 900'
alias downloads='cd ~/Downloads'
alias vupfusion='vagrant up --provider vmware_fusion'
alias vhaltfusion='vagrant halt --provider vmware_fusion'
alias vreloadfusion='vagrant reload --provider vmware_fusion'
alias ssharb='ssh arbitrary'

alias gitpuppet='git clone https://github.com/jconover/puppet.git'

alias myvagrant='cd /Users/jconove/src/vagrant/puppet-enterprise-vagrant-jlc'


# SOA - Production jump server aliases
#alias jmpsoa1='ssh jmpnp101094p11'
#alias jmpsoa2='ssh jmpnp101094p12'

# Sandbox Puppet Servers in SOA?
alias massbx='ssh lmappup01094x01'

# SOA - NON-PRD Jump servers
alias jmpnpsoa1='ssh jmpnp101094p11'
alias jmpnpsoa2='ssh jmpnp101094p12'
alias jmpwinnon1='echo ip = 172.24.172.20 - name = jmpaem00000n01.np.costco.com'
alias jmpwinecomqa='echo name:aemtools02.ecd.costco.com  share:\\aemtools02\d$\Puppet_Enterprise'


# ECOM - NON-PRD Jump Servers
alias jmpnpecom1='ssh xecd0tbx02' #172.24.114.16
alias jmpnpecom2='ssh xeck1tbx01' #172.24.92.156

##PRD Jump servers
alias jmpprd1='ssh jmpunx01094p10.corp.costco.com'
#alias jmpprd2='ssh jmpunx01094p11.corp.costco.com'
#alias jmpprd3='ssh jmpunx01094p12.corp.costco.com'
#alias jmpwinprd1='echo ip = 172.23.108.19 - name = jmpaem01094p01.corp.costco.com' Windows

# Aliases from Chris:
alias la='ls -alFh'
alias c='clear'
alias p='pwd'
#alias ip='ifconfig -a'
#alias pu='pushd'
#alias pp='popd'
alias c.='cd ../'
alias c..='cd ../../'
alias h.='cd ~'
#alias gp='ps -axjf|grep'
#alias gh='history|grep'
#alias tr='sudo traceroute -T -p 80'
#alias j='jobs -l'
#alias path='echo -e ${PATH//:/\n}'
#alias psu='command ps -HAcl -F S -A f|uniq -w3'
#alias psa='ps -HAcl -F S -A f'
#alias gpsa='ps -HAcl -F S -A f|grep'
#alias tuna='netstat -tuna'
#alias gtuna='netstat -tuna|grep'



#alias learnpuppeturl='echo https://172.16.156.133'
#alias learnpuppetusr='echo puppet@example.com'
#alias learnpuppetpwd='echo learningpuppet'
#alias learnpuppet='ssh root@172.16.156.133'
alias learnmaster='ssh root@172.16.156.132'
alias learnconsole='ssh root@172.16.156.136'
alias learnpuppetdb='ssh root@172.16.156.135'
alias learnagent3='ssh root@172.16.156.183'
alias learnagent2='ssh root@172.16.156.152'
alias learnagent1='ssh root@172.16.156.137'

#
#
#
## Pro Puppet 2 environment
#alias propuppet='ssh root@puppet'
#alias pronode1='ssh root@node1'
#alias pronode2='ssh root@node2'
#alias pronode3='ssh root@node3'
#alias pronode4='ssh root@node4'



## Puppet Enterprise 3.2.2 CentOS 6.5 Learning Puppet Quest
alias learn='ssh root@learn.puppetlabs.vm'


## GCE Instances
alias gce-puppet='gcutil --service_version="v1" --project="puppet-project-01" ssh --zone="us-central1-a" "puppet-jlc-01"'
alias gce-agent-01='gcutil --service_version="v1" --project="puppet-project-01" ssh --zone="us-central1-a" "agent-jlc-01"'


## Puppet Cookbook 3
alias pcb='ssh root@172.16.156.136'

## Learn Puppet 3.2.3
alias learnpuppetlabs='ssh root@learn.puppet.labs'
alias learnpuppetlabs_agent1='ssh root@learn-agent-01.puppet.labs'
alias learnpuppetlabs_agent2='ssh root@learn-agent-02.puppet.labs'
alias learnpuppetlabs_agent3='ssh root@learn-agent-03.puppet.labs'

# Puppet 3 Beginners Guide
alias mpuppet='ssh root@masterofpuppets.lab.vm'
