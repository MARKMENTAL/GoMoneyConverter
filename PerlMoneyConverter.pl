use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

my $datestring = localtime();

print("Please enter your name:\n");
my $name       = <>;
my $dollarsign = '$';
chomp($name);
print("Please enter the amount of USD to convert to Japanese Yen:\n");

my $money = 0;
$money = <>;
my $moneyconverted = $money * 110.058;
chomp($money);

if ( looks_like_number($money) ) {
    my $str = <<END;
$datestring Hello $name, You have $dollarsign$money, which is ¥$moneyconverted 
END

    my $filename = 'PerlMCRecords.txt';

    #fh is perl's filehandler object
    #two '>>' symbols are need to tell filehandler to append not delete
    open( FH, '>>', $filename ) or die $!;
    print FH $str;
    close(FH);
    chomp($str);
    print "Wrote||\n$str \n||to file successfully!\n";
}

else {
    print "Invalid input. Program will restart \n";

#program self-referentially executes itself($0) from the command line here to restart
    exec( $^X, $0, @ARGV );
}

