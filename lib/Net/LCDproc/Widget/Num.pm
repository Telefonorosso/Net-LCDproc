package Net::LCDproc::Widget::Num;

#ABSTRACT: 'num' widget

use v5.10.2;
use Types::Standard qw/Int/;
use Moo;
use namespace::clean;

extends 'Net::LCDproc::Widget';
with 'Net::LCDproc::Role::Widget';

has ['x', 'int'] => (
    is       => 'rw',
    isa      => Int,
    required => 1,
    trigger  => \&_set_attr,
);

has '+_set_cmd' => ( default => sub { [qw/ x int /] } );

1;
