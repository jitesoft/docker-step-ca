#!/usr/bin/env ash
if [[ ! -f "${CONFIGPATH}" ]]; then
  echo "Could not find config file at ${CONFIGPATH}, please mount a configuration file in the specified location."
  echo "Refer to the step certificates documentation for further help to initialize the PKI to use for your certificate authority:"
  echo "https://smallstep.com/docs/cli/ca/init/"
  exit 1
fi
if [[ ! -f "${PWDPATH}" ]]; then
  echo "Could not find password file at ${PWDPATH}, please mount a password file in the specified location."
  echo "Refer to the step certificates documentation for further help to initialize the PKI to use for your certificate authority:"
  echo "https://smallstep.com/docs/cli/ca/init/"
  exit 1
fi

exec /usr/local/bin/step-ca --password-file "${PWDPATH}" "${CONFIGPATH}"
