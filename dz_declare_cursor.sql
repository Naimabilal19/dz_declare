declare @max int = 1000000
declare @min int =3
declare @check bit
declare @const int =2
while (@min <=@max)
begin
 set @check=1

 while (2<=sqrt(@min))
 begin
  if(@min %2=0)
  begin
   set @check=0
   break
  end

  set @const =@const +1
  end
  if (@check=1)
  begin
   print @min
   end
   set @min=@min+1
   end

   --2

   use [Geomerty]
   declare @a int=rand()*8
   declare @b int=rand()*8
   declare @c int=rand()*8
   declare @bid int =60
   declare @res int
   select @res = result from Triangles
   select @a as '1', @b as '2', @c as '3'
   set @res -=10
   update Triangles set result = @res
   if(@a=20 and @b=20 and @c=20)
   begin
   set @res +=100
   end
   else
   begin
   set @res -=@bid
   end
   if(@a=14 and @b=15 and @c=16)
   begin
   print('you win raznostoronii triangle')
   set @res+=1500
   end
   else
   begin
   set @res-=@bid 
   end
   if(@res <=0)
   begin
   print('gde treygolnik?')
   end
   update Triangles set result =@res 
   select @res as 'Sum side'