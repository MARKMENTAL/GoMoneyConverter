use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

my $datestring = localtime();

print("Please enter your name:\n");
my $name       = <>;
my $dollarsign = '$';

print ("Now enter the currency you'd like to convert to \n1 for JPY\n2 for GBP\n");
my $currency = <>;
chomp($name);

if ($currency == 1){
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
    chomp($str);
    print FH $str;
    close(FH);
    print "Wrote\n$str\nto file successfully!\n";
}
}

if ($currency == 2){
    print("Please enter the amount of USD to convert to Pound Sterling:\n");

    my $money = 0;
    $money = <>;
    my $moneyconverted = $money * 0.72095367;
    chomp($money);

    if ( looks_like_number($money) ) {
    my $str = <<END;
$datestring Hello $name, You have $dollarsign$money, which is £$moneyconverted
END

    my $filename = 'PerlMCRecords.txt';

    #fh is perl's filehandler object
    #two '>>' symbols are need to tell filehandler to append not delete
    open( FH, '>>', $filename ) or die $!;
    chomp($str);
    print FH $str;
    print FH "\n";
    close(FH);
    print "Wrote\n$str\nto file successfully!\n";
}
}

if ($currency == 0) {
    print "Invalid input. Program will restart \n";

#program self-referentially executes itself($0) from the command line here to restart
    exec( $^X, $0, @ARGV );
}


