{The program takes a lot of time to process numbers
bigger than ~20 because recursion}
program fibRecurse;
var
  n:QWord;
  iter:Integer;

function fib(it:Integer):QWord;
begin
  if (it = 0) then Exit(0)
  else if (it = 1) then Exit(1)
  else
  Exit(fib(it-1) + fib(it-2))
end;

begin
  WriteLn('How far do you wanna go in fibonacci sequence ?');
  WriteLn('past 25, the processing takes more time exponentially...');
  ReadLn(iter);
  n := fib(iter);
  WriteLn('The ',iter,'th number in the fibonacci sequence is ',n);
end.
