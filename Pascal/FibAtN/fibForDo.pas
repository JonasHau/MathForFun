program fib1;
var
  i,iter:Integer;
  n1,n2,n:QWord;

begin
  n2 := 0;
  n1 := 1;
  
  WriteLn('How much iterations of the fibonacci sequence would you like ?');
  ReadLn(iter);
  
  if (iter>2) then
  begin
    Write('1 ');
    
    for i := 1 to (iter-1) do
    begin
      n := n1 + n2;
      n2 := n1;
      n1 := n;
      
      Write(n,' ');
    end;
    WriteLn();
    WriteLn();
    
    if (iter < 4) then Write('The ',iter,'rd')
    else Write('The ',iter,'th');
   Write(' number of the fibonacci sequence is: ',n);
  end
  else WriteLn('Choose at number bigger than 2 please...');
  
  WriteLn();
  WriteLn();
  WriteLn();
  WriteLn('Press <Enter> to exit...');
  ReadLn();
end.
