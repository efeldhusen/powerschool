#!/usr/bin/perl

open (MYFILE, 'psp.csv');

while (<MYFILE>)
	{
	($firstname, $lastname, $webid, $webpassword, $email) = split(/,/,$_,5);
	print "Email - $email First - $firstname Last - $lastname ID - $webid Password - $webpassword","\n";
	sendEmail ("$email","sendinguser@domain","PowerSchool Parent Password for $firstname $lastname","Testing" );
	}

# Simple Email Function
# ($to, $from, $subject, $message)
sub sendEmail
{
my ($to, $from, $subject, $message) = @_;
my $sendmail = '/usr/sbin/sendmail';
open(MAIL, "|$sendmail -oi -t");
print MAIL "From: $from\n";
print MAIL "To: $to\n";
print MAIL "Subject: $subject\n\n";
print MAIL "$message\n";
close(MAIL);
} 
