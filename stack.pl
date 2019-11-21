#!/usr/bin/perl

sub main {
	@stack = ();
	$command;
	$value;

	print "Enter next command";
	@commandAndValues = split(" ", <STDIN>);

	$command = $commandAndValues[0];
	$value = $commandAndValues[1];

	#print "\n value " . $commandAndValues[1] == "";

	#print "\n command " . $command;

	while($command ne 'quit') {
		if ($command eq 'push') {
			if ($value eq "") {
				print "\n Value not entered.";
			} else {
				push(@stack, $value);
				print "DONE";
			}
		} elsif ($command eq 'pop') {
			$popped = pop(@stack);
			if ( $popped ne "") {
				print "Popped " . $popped;
			} else {
				print "No elements";
			}
		} else {
			print "Invalid command";
		}

		print "\nEnter next command";
        	@commandAndValues = split(" ", <STDIN>);

        	$command = $commandAndValues[0];
        	$value = $commandAndValues[1]; 
	}

	$finalstate = join ",", @stack;

	print "Final state : \[$finalstate\] \n";	
}

main();
