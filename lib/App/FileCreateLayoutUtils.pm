package App::FileCreateLayoutUtils;

# DATE
# VERSION

use strict;
use warnings;

our %SPEC;

$SPEC{parse_file_create_layout} = {
    v => 1.1,
    summary => 'Parse layout for File::Create::Layout',
    args => {
        layout => {
            schema => 'str*',
            cmdline_src => 'stdin_or_files',
            pos => 0,
            req => 1,
        },
    },
};
sub parse_file_create_layout {
    require File::Create::Layout;
    my %args = @_;

    [200, "OK", File::Create::Layout::_parse_layout($args{layout})];
}

$SPEC{create_files_using_layout} = {
    v => 1.1,
    summary => 'Create files according to layout using File::Create::Layout',
    args => {
        layout => {
            schema => 'str*',
            cmdline_src => 'stdin_or_files',
            pos => 0,
            req => 1,
        },
        prefix => {
            schema => 'str*',
        },
    },
};
sub create_files_using_layout {
    require File::Create::Layout;
    my %args = @_;

    File::Create::Layout::create_files_using_layout(%args);
}

1;
# ABSTRACT: CLIs for File::Create::Layout

=head1 SYNOPSIS


=head1 DESCRIPTION

This distribution includes several utilities:

#INSERT_EXECS_LIST
