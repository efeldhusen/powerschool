#!/usr/bin/perl
open (MYFILE, 'srsd.csv');

print "Student_Number,First_Name,Last_Name,Grade_Level,MI_SCMOperISDESANum,Mi_Srsd_Birthcity,MI_SRSD_StudResMembership,MI_MultipleBirth,Mi_Srsd_Studentuic,MI_SRSD_PrgmEligi_Title1,MI_SRSD_PrgmEligi_SpEd,MI_SRSD_PrgmEligi_EarlyIntervention,MI_SRSD_PrgmEligi_GiftTal,MI_SRSD_PrgmEligi_LEP,MI_SRSD_PrgmEligi_MigrantEd,MI_SRSD_PrgmEligi_AdEd,MI_SRSD_PrgmEligi_504,MI_SRSD_StudResMembership,MI_LunchStatAppFlag,MI_MultipleBirth,Mi_Sped_Primarydisability,Mi_SpEd_AdditionalDisability,Mi_Sped_lepdate,MI_Sped_ParenConsEval,MI_Sped_Resofiiep,MI_SpEd_IEPDays,Mi_Sped_Fte52,Mi_Sped_Fte53,Mi_Sped_Prgmservicecode1,Mi_Sped_Prgmservicecode2,Mi_Sped_Prgmservicecode3,Mi_Sped_Supportservices1,Mi_Sped_Supportservices2,Mi_Sped_Supportservices3,Mi_Sped_Supportservices4,Mi_Sped_Supportservices5,Mi_Sped_PrimaryEdSetting,MI_SpEd_ExitCode,MI_SpEd_ExitDate,MI_SpEd_IepAnotherDistrict,MI_SRSD_Prgm_AltEd,MI_SRSD_Prgm_DevRetKind,MI_SRSD_Prgm_StudResMembership,MI_SRSD_Prgm_21CCLC,MI_SRSD_Prgm_IntStud,MI_SRSD_Prgm_10_30DayRule","\n";
while (<MYFILE>) 
	{
	$isdnumber = substr $_, 0, 2;
	$firstname = textchange(substr $_, 44, 14);
	$lastname = textchange(substr $_, 19, 24);
	$studentid = textchange(substr $_, 152, 19);
	$birthcity = textchange(substr $_, 81, 19);
	$title1 = substr $_, 332, 1; 
	$sped = substr $_, 333, 1;
	$earlyinter = substr $_, 334, 1;
	$teched = substr $_, 335, 1;
	$gifttal = substr $_, 336, 1;
	$lep = substr $_, 337, 1;
	$migranted = substr $_, 338, 1;
	$aded = substr $_, 339, 1;
	$prog504 = textchange(substr $_, 340, 1);
	$studres = substr $_, 341, 2;
	$multibirth = substr $_, 344, 2;
	$uic = substr $_, 870, 10;
	$grade = substr $_, 176, 2;
	$courseenrollments1 = substr $_, 332, 1;
	$courseenrollments2 = substr $_, 333, 1;
	$courseenrollments3 = substr $_, 334, 1;
	$courseenrollments4 = substr $_, 335, 1;
	$courseenrollments5 = substr $_, 336, 1;
	$courseenrollments6 = substr $_, 337, 1;
	$courseenrollments7 = substr $_, 338, 1;
	$courseenrollments8 = substr $_, 339, 1;
	$courseenrollments9 = substr $_, 340, 1;
	$studentresident = textchange(substr $_, 341, 2);
	$lunch = textchange(substr $_, 343, 1);
	$multiplebirth = textchange(substr $_, 344, 2);
	$spedprimdis = textchange(substr $_, 352, 2);
	$spedadddis = textchange(substr $_, 354, 2);
	$spedleddate = textchange(substr $_, 356, 10);
	$spedparcon = textchange(substr $_, 366, 2);
	$spedresultiep = textchange(substr $_, 368, 1);
	$spediepdays = textchange(substr $_, 369, 3);
	$fte52 = textchange(substr $_, 376, 4);
	$fte53 = textchange(substr $_, 380, 4);
	$spedprgm1 = textchange(substr $_, 384, 3);
	$spedprgm2 = textchange(substr $_, 387, 3);
	$spedprgm3 = textchange(substr $_, 390, 3);
	$spedservc1 = textchange(substr $_, 393, 3);
	$spedservc2 = textchange(substr $_, 396, 3);
	$spedservc3 = textchange(substr $_, 399, 3);
	$spedservc4 = textchange(substr $_, 402, 3);
	$spedservc5 = textchange(substr $_, 405, 3);
	$spedlepddis = textchange(substr $_, 428, 1);
	$srsdalted = substr $_, 880, 1;
	$srsddev = substr $_, 880, 1;
	$srsdstudres = substr $_, 880, 1;
	$srsd21cclc = substr $_, 880, 1;
	$srsdintstud = substr $_, 880, 1;
	$srsd1030rule = substr $_, 880, 1;

	print "$studentid,","$firstname,","$lastname,","$grade,","$isdnumber,","$birthcity,","$studres,","$multibirth,","$uic,","$courseenrollments1,","$courseenrollments2,","$courseenrollments3,","$courseenrollments5,","$courseenrollments6,","$courseenrollments7,","$courseenrollments8,","$courseenrollments9,","$studentresident,","$lunch,","$multiplebirth,","$spedprimdis,","$spedadddis,","$spedleddate,","$spedparcon,","$spedresultiep,","$spediepdays,","$fte52,","$fte53,","$spedprgm1,","$spedprgm2,","$spedprgm3,","$spedservc1,","$spedservc2,","$spedservc3,","$spedservc4,","$spedservc5,","$spedlepddis,","$srsdalted,","$srsddev,","$srsdstudres,","$srsd21cclc,","$srsdintstud,","$srsd1030rule","\n";
	}

close (MYFILE); 

sub textchange($)
{
	my $string = shift;	
	$string =~ s/\s+$//;
	$string = lc $string;
	$string = ucfirst $string;
	return $string;
}