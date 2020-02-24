<?php
while(true)
{
	print_r("Enter a number ? ");
	$input = fgets(STDIN);
	$number = intval($input);
	$counter = 0;

	if($number <= 0) { print_r("Enter a number greater than 0 please.\n\n"); }
	else
	{
		while($number != 1)
		{
			$number = $number%2 == 0 ? $number/2 : 3*$number+1;

			$counter++;
			if (is_numeric($number)) { print_r($number."\t"); }
		}
		print_r("\n".intval($input)." took ".$counter." iteration(s).\n\n");
	}
}
