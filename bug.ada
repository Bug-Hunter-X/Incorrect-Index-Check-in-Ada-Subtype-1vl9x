procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..10;
   function Check_Index (Index : Positive) return Boolean is
   begin
     if Index in My_Arr'Range then
       return True;
     else
       return False;
     end if;
   end Check_Index;
begin
   if Check_Index(11) then
       Put_Line("Index 11 is within range");
   else
       Put_Line("Index 11 is out of range"); -- This will not execute correctly.
   end if;
end Example;