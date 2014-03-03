package Net::LCDproc::Widget::Icon;
$Net::LCDproc::Widget::Icon::VERSION = '0.1.2';
#ABSTRACT: 'icon' widget

use v5.10.2;
use Moo;
use Types::Standard qw/Enum Int/;
use namespace::sweep;

extends 'Net::LCDproc::Widget';
with 'Net::LCDproc::Role::Widget';

has iconname => (
    is  => 'rw',
    isa => Enum([
            qw/
              BLOCK_FILLED
              HEART_OPEN
              HEART_FILLED
              ARROW_UP
              ARROW_DOWN
              ARROW_LEFT
              ARROW_RIGHT
              CHECKBOX_OFF
              CHECKBOX_ON
              CHECKBOX_GRAY
              SELECTOR_AT_LEFT
              SELECTOR_AT_RIGHT
              ELLIPSIS
              STOP
              PAUSE
              PLAY
              PLAYR
              FF
              FR
              NEXT
              PREV
              REC
              NULL
              /
        ]
    ),
    required => 1,
    trigger  => \&_set_attr,
);

has ['x', 'y'] => (
    is       => 'rw',
    isa      => Int,
    required => 1,
    trigger  => \&_set_attr,
);

has '+_set_cmd' => ( default => sub { [qw/ x y iconname /] } );

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Ioan Rogers

=head1 NAME

Net::LCDproc::Widget::Icon - 'icon' widget

=head1 VERSION

version 0.1.2

=head1 BUGS AND LIMITATIONS

You can make new bug reports, and view existing ones, through the
web interface at L<https://github.com/ioanrogers/Net-LCDproc/issues>.

=head1 AVAILABILITY

The project homepage is L<http://metacpan.org/release/Net-LCDproc/>.

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<https://metacpan.org/module/Net::LCDproc/>.

=head1 SOURCE

The development version is on github at L<http://github.com/ioanrogers/Net-LCDproc>
and may be cloned from L<git://github.com/ioanrogers/Net-LCDproc.git>

=head1 AUTHOR

Ioan Rogers <ioanr@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2014 by Ioan Rogers.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT
WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER
PARTIES PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
SOFTWARE IS WITH YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE LIABLE
TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE
SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

=cut
