#!/bin/perl -w

# Amy Nguyen
# 11/04/2018
# CS 3377.0W3
# Number Guessing Game - PERL Version

print "************************************\n\n\n"; 
print "Welcome to the Number Guessing Game!\n\n\n";
print "************************************\n" ;


#Initialize score counter or number of tries
$tries = 0;

#Saving Player Names

print "Please enter your username.\n\n";

$user = <STDIN>;
chomp($user);

print "\nYour username is now : ", $user, ".\n\n";

#Generating a number between 100 and 200
print "\nGenerating a random number between 100 and 200...\n\n";
$randNum = int(rand(100)) + 100;
print("Please enter a number between 100 and 200\n");

#Get guess from user.
$guess = <STDIN>;
chomp($guess);

#Keep going until the user guesses the answer or tries reaches 7.
while($guess != $randNum && $tries < 8)
{
    #Prints out low guess or high guess accordingly.
    if($guess < $randNum)
    {
	print("Low guess... Try again.\n");
    } 
    elsif($guess > $randNum)
    {
	print("High guess... Try again.\n");
    }    
    $tries++;
    
    #Requests input again.
    $guess = <STDIN>;
}

if($tries > 7 && $guess != $randNum)
{
    print("GAME OVER: You have used up all of your tries.\n");
    #Open file
    open(my $fh, '>>', 'scores.txt');
    print $fh "LOST: $user $tries\n";
    #Close file
    close $fh;
}

if($guess == $randNum)
{
    print("Congratulations! You have won!\n");
    #Open file
    open(my $fh, '>>', 'scores.txt');
    print $fh "WON: $user $tries\n";
    #Close file
    close $fh;
}



