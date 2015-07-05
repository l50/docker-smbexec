FROM kalilinux/kali-linux-docker:latest

MAINTAINER l50, https://github.com/l50

ADD /scripts /scripts

# Install dependencies
RUN buildDeps='git \
zlib1g-dev \ 
curl \
g++ \
libxslt-dev \
libxml2-dev \
bison \
libbison-dev \
libpcap-dev \
libpcap0.8 \
libpcap0.8-dev \
postgresql-client \
build-essential \
wget \
ruby1.9.3 \
unzip \
locate \
libreadline-gplv2-dev \
passing-the-hash \
rubygems \
bzip2 \
libnokogiri-ruby \
metasploit-framework' \
&& set -x \
&& echo "Installing Dependencies..." \
&& apt-get update \
&& apt-get install -yq $buildDeps

# Install bundler
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

# Install SMBExec using modified installation script for automation purposes.
RUN chmod +x /scripts/installAutomated.sh \
&& git clone --depth=1 https://github.com/pentestgeek/smbexec.git /opt/smbexec \
&& cd /opt/smbexec \
&& bundle install \
&& cp /scripts/installAutomated.sh ./automatedInstall.sh \
&& echo "Configuring SMBExec..." \
&& cd /opt/smbexec \
&& /bin/bash -l -c "./automatedInstall.sh" \
&& echo "Cleaning image..." \
&& apt-get clean
