# $Id: validate.t,v 1.1 2006-02-20 12:36:01 jonasbn Exp $

use strict;
use Test::More tests => 9;
use Test::Exception;

#Test 1, load test
BEGIN { use_ok('Business::DK::PO', qw(validate)) };

#Test 2
dies_ok {validate()} 'no arguments';

#Test 3
dies_ok {validate(123456789012345)} 'too short, 15';

#Test 4
dies_ok {validate(12345678901234567)} 'too long, 17';

#Test 5
dies_ok {validate("abcdefg123456789")} 'unclean';

#Test 6
dies_ok {validate(0)} 'zero';

#Test 7
ok(! validate("0000000000000050"), 'error prone');

#Test 8
ok(validate("0000000000000018"), 'ok');

#Test 9
ok(validate("1234563891234562"), 'from example');
