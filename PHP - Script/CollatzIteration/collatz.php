<?php
while(true)
{
	echo("Enter a number ? ");
	$input = fgets(STDIN);
	$counter = 0;
	
	$number = intval($input);
	
	if($number <= 0) { echo("enter a number greater than 0 please.\n\n"); }
	else
	{
		while($number != 1)
		{
			$number = $number % 2 == 0 ? $number / 2 : (3 * $number) + 1;
			
			$counter++;
			echo($number."\t");
		}
		echo("\n".intval($input)." took ".$counter." iteration(s).\n\n");
	}
}