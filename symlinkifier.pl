#! /usr/bin/perl
use strict;
use warnings;

##TODO Make single function that retrives path and name from dictionary

# List with config that recides in home folder
my @home_conf = qw(.i3blocks.conf .tmux.conf .vimrc .zshrc);
foreach my $file (@home_conf){
    my $out = `ln -sf ~/dotfiles/$file ~/`;
};

# List with config that recides in .config folder
my @conf_conf = qw(i3 rofi terminator polybar);
foreach my $name (@conf_conf){
    my $out = `ln -sf ~/dotfiles/$name/config ~/.config/$name`;
};

# Custom for nvim
my @conf_conf = qw(nvim);
foreach my $name (@conf_conf){
    my $out = `ln -sf ~/dotfiles/$name/init.vim ~/.config/$name`;
};

#Custom for visual studio

my $out = `ln -sf ~/dotfiles/settings.json ~/.config/Code/User/settings.json/`


