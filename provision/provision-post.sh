#!/usr/bin/env bash

COLOR_BROWN="\033[0;33m"
COLOR_GREEN="\033[1;32m"
COLOR_NONE="\033[0m"

set -e

# Some instructions
echo -e " "
echo -e " "
echo -ne "${COLOR_BROWN}                  \`....\`\`\n"
echo -ne "${COLOR_BROWN}      .-:+oos\`   \`syyyyyyys+-\n"
echo -ne "${COLOR_BROWN}   :+syyyyyys    \`yyyyyyyyyyy\`\n"
echo -ne "${COLOR_BROWN}  +yyyyyyyyyy-    +yyyyyyyyys\n"
echo -ne "${COLOR_BROWN}  oyyyyyyyyyyo    \`syyyyyyyy:${COLOR_NONE}   -oooooooooo+ :oo.     \`+o/  \`ooossoo+-      ./ooso+:\`    \`+ooso+:\n"
echo -ne "${COLOR_BROWN}  :yyyyyyyyyyy/    .syyyyyy+${COLOR_NONE}    \`----yy/---.  +ys.    oyo   .yy/.\`\`-sy+    /ys:.\`./ys-    -..\`-sy+\n"
echo -ne "${COLOR_BROWN}  \`syyyyyyyyyyy:    \`oyyyy+${COLOR_NONE}         \`yy:       +ys\`  +yo    .yy:    -yy.  .yy-     +ys         :ys\n"
echo -ne "${COLOR_BROWN}   -yyyyyyyyyyyy:     -++:${COLOR_NONE}          \`yy:        +ys\`+yo     .yy:    .yy-  /yy      -yy.        +ys\n"
echo -ne "${COLOR_BROWN}    /yyyyyyyyyyyy+\`${COLOR_NONE}                 \`yy:         +ysyo      .yy:    +ys\`  +ys      -yy-    ///oyo.\n"
echo -ne "${COLOR_BROWN}     +yyyyyyyyyyyys:\`${COLOR_NONE}               \`yy:          oys       .yyo+++syo.   +ys      .yy-    :::/ss/\n"
echo -ne "${COLOR_BROWN}      +yyyyyyyyyyyyyy+\`${COLOR_NONE}             \`yy:          oyo       .yy/---.\`     /ys      -yy.        -yy.\n"
echo -ne "${COLOR_BROWN}       :syyyyyyyyyys:${COLOR_NONE}               \`yy:          oyo       .yy:          -yy.     /ys         \`yy-\n"
echo -ne "${COLOR_BROWN}        .oyyyyyyys/\`${COLOR_NONE}                \`yy:          oyo       .yy:           oyo.   -sy:        \`+ys\`\n"
echo -ne "${COLOR_BROWN}          -oyyyo/\`${COLOR_NONE}                  \`yy:          oyo       .yy:            /sysssso-    .yssssyo.\n"
echo -ne "${COLOR_BROWN}            \`\`\`${COLOR_NONE}                      \`\`            \`         \`\`               \`\`\`\`         \`\`\`\`\n"
echo -e " "
echo -e "==================================================================================================="
echo -e " Bootstrapping of TYPO3 CMS ${t3bs_typo3_version} has been finished."
echo -e "==================================================================================================="
echo -e " "
echo -e " If you have the vagrant-hostmanager plugin installed or if you have already updated your hosts"
echo -e " file located at /etc/hosts, you can now visit your freshly bootstrapped TYPO3 project at the"
echo -e " following locations:"
echo -e " "
echo -e " Frontend: http://${t3bs_hostname}"
echo -e " Backend:  http://${t3bs_hostname}/typo3"
echo -e " MailHog:  http://${t3bs_hostname}:8025"
echo -e " "
echo -e " Otherwise you can visit your TYPO3 project using the virtual machines IP address (${t3bs_ip}):"
echo -e " "
echo -e " Frontend: http://${t3bs_ip}"
echo -e " Backend:  http://${t3bs_ip}/typo3"
echo -e " MailHog:  http://${t3bs_ip}:8025"
echo -e " "
echo -e " TYPO3 Username: ${t3bs_typo3_admin_user}"
echo -e " TYPO3 Password: ${t3bs_typo3_admin_pass}"
echo -e " "
echo -e " MailHog Username: ${t3bs_mailhog_auth_user}"
echo -e " MailHog Password: ${t3bs_mailhog_auth_pass}"
echo -e " "

if [ "${t3bs_use_tls}" = true ]; then
  echo -e " --------------------------------------------------------------------------------------------------"
  echo -e " "
  echo -e " This site uses TLS encryption with self-signed certificates. In order to avoid SSL certificate"
  echo -e " warnings please make sure that you have imported the CA certificate provided with this package"
  echo -e " into your browser. The file is located at /provision/ssl/certs/ca.crt.pem"
  echo -e " "
fi
