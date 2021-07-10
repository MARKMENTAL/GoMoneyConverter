use warnings;
use strict;

my $datestring = localtime();

print("Please enter your name:\n");
my $name = <>;
my $dollarsign = '$';
chomp($name);
print("Please enter the amount of USD to convert to Japanese Yen:\n");
my $money = 0;
$money = <>;
my $moneyconverted = $money * 110.11;
chomp($money);

my $str = <<END;
$datestring 
Hello $name, You have $dollarsign$money, which is ¥$moneyconverted 
END

my $filename = 'test3.txt';

#fh is perl's filehandler object
#two '>>' symbols are need to tell filehandler to append not delete
open(FH, '>>', $filename) or die $!;

print FH $str;

close(FH);

chomp($str);
print "Wrote||\n$str \n||to file successfully!\n";
