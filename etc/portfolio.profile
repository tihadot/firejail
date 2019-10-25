# Firejail profile for portfolio (Portfolio Performance)
# Description: A simple tool to calculate the overall performance of an investment portfolio
# This file is overwritten after every install/update
# Persistent local customizations
include portfolio.local
# Persistent global definitions
include globals.local

ignore noexec ${HOME}

noblacklist ${DOCUMENTS}
noblacklist ${HOME}/.eclipse
noblacklist ${HOME}/.PortfolioPerformance

include allow-java.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.eclipse
mkdir ${HOME}/.PortfolioPerformance
whitelist ${DOCUMENTS}
whitelist ${HOME}/.eclipse
whitelist ${HOME}/.PortfolioPerformance
include whitelist-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

caps.drop all
machine-id
netfilter
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin java,portfolio
private-cache
private-dev
# Does not work with all Java configurations. You will notice immediately, so you might want to give it a try
#private-etc alternatives,ca-certificates,crypto-policies,host.conf,hostname,hosts,java-10-openjdk,java-7-openjdk,java-8-openjdk,java-9-openjdk,java.conf,nsswitch.conf,passwd,pki,protocols,resolv.conf,rpc,services,ssl
private-tmp 
