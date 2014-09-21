#!/bin/bash

echo "Install tools for Developers"

echo "-> Install"

    for PACKAGE in net-tools unzip wget vim-enhanced mc git nc; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

    # Configure VIM
    SCRIPTDIR="/vagrant/modules/centos/core/"
    cp $SCRIPTDIR/dev-tools/.vimrc ~/.vimrc
    wget -q -P ~/.vim/colors http://hans.fugal.net/vim/colors/desert.vim

echo "-> Success"

