alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# User specific aliases and functions
#CentOS
alias ssh.126='ssh user@192.168.1.126'
#Fedora
alias ssh.127='ssh user@192.168.1.127'
#Ubuntu
alias ssh.128='ssh user@192.168.1.128'

function swp()
{
  if [ $# -ne 2 ]; then
    echo "$(basename $SHELL): $FUNCNAME: command not found..."
  else
    local TMP=$(mktemp -u "$(dirname $1)"/XXXXXX)
    mv "${1%/}" "$TMP" && mv "${2%/}" "${1%/}" && mv "$TMP" "${2%/}"
  fi
}

