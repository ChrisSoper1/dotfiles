#!/bin/bash
cat > /etc/yum.repos.d/webmin.repo<<EOF
[Webmin]
name=Webmin Distribution Neutral
#baseurl=http://download.webmin.com/download/yum
mirrorlist=http://download.webmin.com/download/yum/mirrorlist
enabled=1
EOF

wget "http://www.webmin.com/jcameron-key.asc"
rpm --import jcameron-key.asc
rm jcameron-key.asc
