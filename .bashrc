#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\u@\h \w ${PS1_CMD1} \$ '

#echo "Microsoft Windows [Version 4.0.1381.445]"
#echo "Copyright (C) 1981-1998 Microsoft Corp. All Rights Reserved."
#echo

function msdos_pwd
{
   local dir="`pwd`"

    echo $dir | tr '/' '\\'
}

export PS1='C:`msdos_pwd`> '

echo "Microsoft Windows [Version 6.1.7602]"
echo "Copyright <c> 2009 Microsoft Corporation. All Rights Reserved."
echo
#echo

# . /usr/share/powerline/bindings/bash/powerline.sh

# source ~/.bash-powerline.sh


if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

export "MICRO_TRUECOLOR=1"

#sh bio3.sh
sh sysreport2.sh

#fastfetch

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac
