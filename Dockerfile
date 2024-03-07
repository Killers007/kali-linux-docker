FROM kalilinux/kali-rolling
 
LABEL maintainer="Ahmad Juhdi <ahmadjuhdi007@gmail.com>"

RUN apt-get update -y && \
      apt-get install -y \
      curl \
      python3

###########################################################################
# SSH Config
###########################################################################

ARG SSH=false

RUN if [ ${SSH} = true ]; then \
    apt-get install -y \
      ssh && \
      service ssh start && \
      update-rc.d -f ssh remove && \
      update-rc.d -f ssh defaults && \
    
      # Create user and set password (not recommended)
      useradd --create-home --shell /bin/bash --user-group --groups sudo ${SSH_USERNAME} \ && 
      echo "${SSH_USERNAME}:${SSH_PASSWORD}" | chpasswd
;fi

# RUN apt-get install -y \
#       ssh
# RUN service ssh start && \
#       update-rc.d -f ssh remove && \
#       update-rc.d -f ssh defaults

# Set default user details
# ARG USERNAME=juhdi
# ARG PASSWORD=juhdi

# RUN useradd --create-home --shell /bin/bash --user-group --groups sudo ${USERNAME} \
#     && echo "${USERNAME}:${PASSWORD}" | chpasswd

###########################################################################
# DESKTOP ENVIRONMENT
###########################################################################

ARG GUI=false

RUN if [ ${GUI} = true ]; then \
    apt-get install -y \
      kali-desktop-gnome \
;fi

###########################################################################
# METASPLOIT
###########################################################################

ARG METASPLOIT=false

RUN if [ ${METASPLOIT} = true ]; then \
    # curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    # chmod 755 msfinstall && \
    # ./msfinstall \

    apt-get install -y \
      metasploit-framework \
;fi

###########################################################################
# BEEF-XSS
###########################################################################

ARG BEEF=false

RUN if [ ${BEEF} = true ]; then \
    apt-get install beef-xss -y \
;fi

###########################################################################
# SQLMAP
###########################################################################

ARG SQLMAP=false

RUN if [ ${SQLMAP} = true ]; then \
    apt-get install sqlmap -y \
;fi

###########################################################################
# HYDRA
###########################################################################

ARG HYDRA=false

RUN if [ ${HYDRA} = true ]; then \
    apt-get install -y \
      hydra \
      hydra-gtk \
;fi

###########################################################################
# NMAP
###########################################################################

ARG NMAP=false

RUN if [ ${NMAP} = true ]; then \
    apt-get install -y \
      ncat \
      ndiff \
      nmap \
      nmap-common \
;fi

###########################################################################
# WIFITE
###########################################################################

ARG WIFITE=false

RUN if [ ${WIFITE} = true ]; then \
    apt-get install -y \
      wifite \
;fi

###########################################################################
# HASHCAT
###########################################################################

ARG HASHCAT=false

RUN if [ ${HASHCAT} = true ]; then \
    apt-get install -y \
      hashcat \
      hashcat-data \
;fi

###########################################################################
# SPIDERFOOT
###########################################################################

ARG SPIDERFOOT=false

RUN if [ ${SPIDERFOOT} = true ]; then \
    apt-get install -y \
      spiderfoot \
;fi

###########################################################################
# SHERLOCK
###########################################################################

ARG SHERLOCK=false

RUN if [ ${SHERLOCK} = true ]; then \
    apt-get install -y \
      sherlock \
;fi

###########################################################################
# DIRB
###########################################################################

ARG DIRB=false

RUN if [ ${DIRB} = true ]; then \
    apt-get install -y \
      dirb \
;fi

###########################################################################
# ETTERCAP
###########################################################################

ARG ETTERCAP=false

RUN if [ ${ETTERCAP} = true ]; then \
    apt-get install -y \
      ettercap-common \
      ettercap-graphical \
      ettercap-text-only \
;fi

###########################################################################
# WIRESHARK
###########################################################################

ARG WIRESHARK=false

RUN if [ ${WIRESHARK} = true ]; then \
    apt-get install -y \
      libwireshark-data \
      libwireshark-dev \
      libwireshark17 \
      libwiretap-dev \
      libwiretap14 \
      libwsutil-dev \
      libwsutil15 \
      tshark \
      wireshark \
      wireshark-common \
      wireshark-dev \
      wireshark-doc \
;fi

###########################################################################
# NETCAT
###########################################################################

ARG NETCAT=false

RUN if [ ${NETCAT} = true ]; then \
    apt-get install -y \
      netcat-traditional \
;fi

###########################################################################
# YERSINIA
###########################################################################

ARG YERSINIA=false

RUN if [ ${YERSINIA} = true ]; then \
    apt-get install -y \
      yersinia \
;fi

###########################################################################
# RESPONDER
###########################################################################

ARG RESPONDER=false

RUN if [ ${RESPONDER} = true ]; then \
    apt-get install -y \
      responder \
;fi

###########################################################################
# NIKTO
###########################################################################

ARG NIKTO=false

RUN if [ ${NIKTO} = true ]; then \
    apt-get install -y \
      nikto \
;fi

###########################################################################
# AIRCRACK-NG
###########################################################################

ARG AIRCRACK-NG=false

RUN if [ ${AIRCRACK-NG} = true ]; then \
    apt-get install -y \
      aircrack-ng \
      airgraph-ng \
;fi

###########################################################################
# WPSCAN
###########################################################################

ARG WPSCAN=false

RUN if [ ${WPSCAN} = true ]; then \
    apt-get install -y \
      wpscan \
;fi

###########################################################################
# WPSCAN
###########################################################################

ARG WPSCAN=false

RUN if [ ${WPSCAN} = true ]; then \
    apt-get install -y \
      wpscan \
;fi

###########################################################################
# SNORT
###########################################################################

ARG SNORT=false

RUN if [ ${SNORT} = true ]; then \
    apt-get install -y \
      snort \
      snort-common \
      snort-common-libraries \
      snort-doc \
      snort-rules-default \
;fi

###########################################################################
# MIMIKATZ
###########################################################################

ARG MIMIKATZ=false

RUN if [ ${MIMIKATZ} = true ]; then \
    apt-get install -y \
      mimikatz \
;fi

###########################################################################
# MALTEGO
###########################################################################

ARG MALTEGO=false

RUN if [ ${MALTEGO} = true ]; then \
    apt-get install -y \
      maltego \
;fi

###########################################################################
# AUTOPSY
###########################################################################

ARG AUTOPSY=false

RUN if [ ${AUTOPSY} = true ]; then \
    apt-get install -y \
      autopsy \
;fi

###########################################################################
# LEGION
###########################################################################

ARG LEGION=false

RUN if [ ${LEGION} = true ]; then \
    apt-get install -y \
      legion \
;fi

###########################################################################
# DIRBUSTER
###########################################################################

ARG DIRBUSTER=false

RUN if [ ${DIRBUSTER} = true ]; then \
    apt-get install -y \
      dirbuster \
;fi

###########################################################################
# GOBUSTER
###########################################################################

ARG GOBUSTER=false

RUN if [ ${GOBUSTER} = true ]; then \
    apt-get install -y \
      gobuster \
;fi

###########################################################################
# TCPDUMP
###########################################################################

ARG TCPDUMP=false

RUN if [ ${TCPDUMP} = true ]; then \
    apt-get install -y \
      tcpdump \
;fi

###########################################################################
# CEWL
###########################################################################

ARG CEWL=false

RUN if [ ${CEWL} = true ]; then \
    apt-get install -y \
      cewl \
;fi

###########################################################################
# BURPSUITE
###########################################################################

ARG BURPSUITE=false

RUN if [ ${BURPSUITE} = true ]; then \
    apt-get install -y \
      burpsuite \
;fi

###########################################################################
# WORDLISTS
###########################################################################

ARG WORDLISTS=false

RUN if [ ${WORDLISTS} = true ]; then \
    apt-get install -y \
      wordlists \
;fi

###########################################################################
# HPING3
###########################################################################

ARG HPING3=false

RUN if [ ${HPING3} = true ]; then \
    apt-get install -y \
      hping3 \
;fi

###########################################################################
# POWERSHELL
###########################################################################

ARG POWERSHELL=false

RUN if [ ${POWERSHELL} = true ]; then \
    apt-get install -y \
      powershell \
;fi

###########################################################################
# CRUNCH
###########################################################################

ARG CRUNCH=false

RUN if [ ${CRUNCH} = true ]; then \
    apt-get install -y \
      crunch \
;fi

###########################################################################
# JOHN
###########################################################################

ARG JOHN=false

RUN if [ ${JOHN} = true ]; then \
    apt-get install -y \
      john \
      john-data \
;fi

###########################################################################
# THEHARVESTER
###########################################################################

ARG THEHARVESTER=false

RUN if [ ${THEHARVESTER} = true ]; then \
    apt-get install -y \
      theharvester \
;fi

###########################################################################
# NETDISCOVER
###########################################################################

ARG NETDISCOVER=false

RUN if [ ${NETDISCOVER} = true ]; then \
    apt-get install -y \
      netdiscover \
;fi

###########################################################################
# BLOODHOUND
###########################################################################

ARG BLOODHOUND=false

RUN if [ ${BLOODHOUND} = true ]; then \
    apt-get install -y \
      bloodhound \
;fi

###########################################################################
# AIRGEDDON
###########################################################################

ARG AIRGEDDON=false

RUN if [ ${AIRGEDDON} = true ]; then \
    apt-get install -y \
      airgeddon \
;fi

###########################################################################
# MACCHANGER
###########################################################################

ARG MACCHANGER=false

RUN if [ ${MACCHANGER} = true ]; then \
    apt-get install -y \
      macchanger \
;fi

###########################################################################
# DSNIFF
###########################################################################

ARG DSNIFF=false

RUN if [ ${DSNIFF} = true ]; then \
    apt-get install -y \
      dsniff \
;fi

###########################################################################
# AMASS
###########################################################################

ARG AMASS=false

RUN if [ ${AMASS} = true ]; then \
    apt-get install -y \
      amass \
      amass-common \
;fi

###########################################################################
# STEGHIDE
###########################################################################

ARG STEGHIDE=false

RUN if [ ${STEGHIDE} = true ]; then \
    apt-get install -y \
      steghide \
      steghide-doc \
;fi

###########################################################################
# SCAPY
###########################################################################

ARG SCAPY=false

RUN if [ ${SCAPY} = true ]; then \
    apt-get install -y \
      python3-scapy \
;fi

###########################################################################
# RECON-NG
###########################################################################

ARG RECON-NG=false

RUN if [ ${RECON-NG} = true ]; then \
    apt-get install -y \
      recon-ng \
;fi

# Expose URL? (Optional, for helper mapping port in docker-compose.yaml)
EXPOSE 22 80 81 443 4444 4040 6501 8080 4443

# Startup SSH service when container starts
CMD ["/usr/sbin/sshd", "-D"]