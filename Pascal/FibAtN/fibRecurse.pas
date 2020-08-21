{The program takes a lot of time to process numbers
bigger than 50 because recursion}
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
  WriteLn('How much iterations of the fibonacci sequence would you like ?');
  WriteLn('I dont recommend going past 50, the processing may take some time...');
  ReadLn(iter);
  n := fib(iter);
  WriteLn('The ',iter,'th number in the fibonacci sequence is ',n);

  WriteLn();
  WriteLn('Press <Enter> to exit...');
  ReadLn();
end.
