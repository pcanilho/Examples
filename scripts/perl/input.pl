#!usr/local/bin/perl

# Print Menu
print_menu();

# Get user input
get_usr_input();

# Subroutines
sub get_usr_input {
	printf("input> ");
	$result = <STDIN>;
	chomp $result;
	if ( $result eq "1" ) {
		print_menu();
		get_usr_input();
	}
	elsif ( $result eq "2" ) {
		printf("Help is coming soon!\n");
		get_usr_input();
	}
	elsif ( $result eq "3" ) {
		printf( "Current user: root\n");
		get_usr_input();
	}
	elsif ( $result eq "4" ) {
		printf("1) add(x,y) -> r=x+y\n2) sub(x,y) -> r=x-y");
		printf("\ninput/examples> ");
		$answer = <STDIN>;
		if ( $answer eq "1" ) {
			my $x = int( rand(1000) ), $y = int( rand(1000) );
			my $r = $x + $y ;
			printf( "x: ". $x . "\ny: " . $y );
			printf( "\nr: ". $r);
			printf("\n");
		}
		elsif ( $answer eq "2" ) {
			my $x = int( rand(1000) ), $y = int( rand(1000) );
			my $r = $x - $y ;
			printf( "x: ". $x . "\ny: " . $y );
			printf( "\nr: ". $r);
			printf("\n");
		}
		else {
			printf("Wrong input.\n");
		}
		get_usr_input();
	}
	elsif ( $result eq "5" ) {
		printf("Terminating...\nAre you sure you want to quit? y/n\ninput/exit> ");
		$an = <STDIN>;
		chomp($an);
		if(($an eq "y") || ($an eq "Y") ){
			printf("Exiting...\n");
			exit;
		}else{
			printf("Aborted...\n");
		}
		get_usr_input();
	}
	else {
		printf("Wrong input.\n");
		get_usr_input();
	}
}

sub print_menu {
	printf("\n");
	printf("##########################################\n");
	printf("############ PERL INPUT TEST #############\n");
	printf("##########################################\n");
	printf("#### COMMANDS                         ####\n");
	printf("####                                  ####\n");
	printf("#### 1)Main menu                      ####\n");
	printf("#### 2)Help                           ####\n");
	printf("#### 3)User                           ####\n");
	printf("#### 4)PERL Examples                  ####\n");
	printf("#### 5)Exit                           ####\n");
	printf("##########################################\n");
}
