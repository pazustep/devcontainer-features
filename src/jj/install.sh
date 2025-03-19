#!/bin/bash -e
ARCH=$(uname -m)
ARCHIVE="jj-v${VERSION}-${ARCH}-unknown-linux-musl.tar.gz"

if ! type jj &> /dev/null; then
  WORKDIR=$(mktemp -d)
  echo "Installing jj ${VERSION}…"
  curl --output-dir "${WORKDIR}" -O -sSL "https://github.com/jj-vcs/jj/releases/download/v${VERSION}/${ARCHIVE}"
  tar -C "${WORKDIR}" -xzf "${WORKDIR}/${ARCHIVE}"
  install "${WORKDIR}/jj" /usr/local/bin
fi

USER_CONFIG_SCRIPT=/usr/local/share/jj-set-user-config.sh
tee "$USER_CONFIG_SCRIPT" > /dev/null \
<<EOF
#!/bin/bash -e

function set_user_config {
  if [[ -n "\$2" ]]; then
    jj config set --user "\$1" "\$2"
  fi
}

set_user_config user.name "$USERNAME"
set_user_config user.email "$USEREMAIL"
set_user_config signing.behavior "$SIGNINGBEHAVIOR"
set_user_config signing.backend "$SIGNINGBACKEND"
set_user_config signing.key "$SIGNINGKEY"
EOF

chmod 755 "$USER_CONFIG_SCRIPT"
