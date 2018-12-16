#!/usr/bin/perl -w

# $Id: validate_po.pl,v 1.1 2006-02-20 12:36:01 jonasbn Exp $

use strict;
use warnings;
use Pod::Usage;
use vars qw($VERSION);
use Getopt::Long;
use Business::DK::PO qw(validate);

$VERSION = '0.01';

my $opt_man;
my $opt_help;

GetOptions( "help", "man" ) || pod2usage(2);
pod2usage(1) if ($opt_help);
pod2usage( -verbose => 2 ) if ($opt_man);

$Business::DK::PO::VERBOSE = 1;

my $rv = validate( $ARGV[0] );

if ($rv) {
    $rv = 0;
}
else {
    $rv = 1;
}

__END__

=head1 NAME

validate_po.pl - script to validate a PO code

=head1 SYNOPSIS

=head1 OPTIONS

=head1 DESCRIPTION

=head1 BUGS

Please report issues via CPAN RT:

  http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-DK-PO

or by sending mail to

  bug-Business-DK-PO@rt.cpan.org

=head1 SEE ALSO

=over

=item L<Business::DK::PO>

=item bin/generate_po.pl

=back

=head1 HISTORY

$Log: not supported by cvs2svn $
Revision 1.1  2006/02/08 19:27:54  jonasbn
Moved PO to deep structure due to installation problems

Added initial revisions of example CLI scripts


=head1 AUTHOR

Jonas B. Nielsen, (jonasbn) - C<< <jonasbn@cpan.org> >>

=head1 COPYRIGHT

Business-DK-PO and related scripts are (C) by Jonas B. Nielsen, (jonasbn) 2006

Business-DK-PO is released under the artistic license

The distribution is licensed under the Artistic License, as specified
by the Artistic file in the standard perl distribution
(http://www.perl.com/language/misc/Artistic.html).

=cut
