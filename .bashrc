
case $- in
  *i*) ;;
    *) return;;
esac

declare -- PATH && {

    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:/usr/lib/llvm/13/bin"

    [ -d "/home/$USER/.local/share/bin" ] && {
	PATH="$PATH:/home/$USER/.local/share/bin"
    }

    [ -d "/home/$USER/.bin" ] && {
	PATH="$PATH:/home/$USER/.bin"
    }
    
}

shopt -s checkwinsize
shopt -s histappend

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

function @extract()
{
  if [ "$1" ]; then
    case "$1" in
      *.tar.bz2)
        tar xjf $1
        ;;

      *.tar.gz)
        tar xzf $1
        ;;

      *.tar)
        tart xf $1
        ;;

      *.rar)
        unrar x $1
        ;;

      *.zip)
        unzip $1
        ;;

      *.deb)
        ar x $1
        ;;

      *)
        echo "$1 não pode ser extraído por: ${BA}"
        return 1
        ;;
    esac

  else
    echo "Oppss, sem suporte ao formato de arquivo."
    return 0
  fi
}

[[ -f "/home/$USER/.bash_aliases" ]] && . "/home/$USER/.bash_aliases"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

