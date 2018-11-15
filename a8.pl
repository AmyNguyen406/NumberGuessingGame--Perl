#!/bin/perl -w

#Amy Nguyen
#10/28/2018

print("Question 1: 2(100) + 5= \n");
$x = 100;
print(2 * $x + 5, "\n\n");

#----------------------------

print("Question 2: Generate 2 random numbers and compare \n");
$a = int(rand(21)) + -10; 
$b = int(rand(21)) + -10;

print("First number: ", $a, "\n");

print("Second number: ", $b, "\n");

if($a == $b) {
    print("Match Found. \n\n");
} else {
    print("Different Numbers. \n\n");
}

#----------------------------

print("Question 3: X=10 Y=5 X(X)+Y(Y)= \n");
$x = 10;
$y = 5;

print($x * $x + $y * $y, "\n\n");

#---------------------------

print("Question 4: List Arrays, X=1,2,3 Y=4,5,6 \n");
@x = (1,2,3);
@y = (4,5,6); 
@z = ($x[0]+$y[0],$x[1]+$y[1],$x[2]+$y[2]);
print("Middle element of list Z: ", $z[1], "\n");
print("Middle 3 (which is all of Z): ", @z, "\n\n");

#------------------------------

print("Question 5: Hash variable \n");
%x = ("A",1,"B",2,"C",3); # A hash variable with 3 keys and values.
print("Hash: ", %x, "\n\n");

#------------------------------

print("Question 6:Compare 3 words \n");

print("Enter a word: \n");
my $word1 = <>; 
print ("Enter another word: \n");
my $word2 = <>;
print ("Enter your last word: \n");
my $word3 = <>;

if($word1 eq $word2) {
    print("Match found!\n\n");
} elsif($word1 eq $word3) {
    print("Match found!\n\n");
} elsif($word2 eq $word3) {
    print("Match found!\n\n");
} else {
    print("No matches found.\n\n");
}

#-----------------------------

print("Question 7: Generate 100 random words between 0 and 99 and prints to q7.txt \n");
$counter = 1;

$filename = 'q7.txt';
open($fh, '>', 'q7.txt');
 
while ($counter != 100) {
    $randNum = int(rand(100));
    print $fh($randNum, " ");
    $counter++;
}

close $fh;
print("Random numbers generated to:", $filename, "\n\n"); 

#------------------------------

print("Question 8: Subroutine to generate random numbers between -10 and 10\n");
sub sumSquare() 
{
    $randNum1 = int(rand(21)) + -10; 
    $randNum2 = int(rand(21)) + -10; 
    $square = $randNum1 * $randNum1 + $randNum2 * $randNum2;

    print("Sum of squares for  ", $randNum1, "and", $randNum2, " = ", $square, "\n\n");
}

sumSquare();

