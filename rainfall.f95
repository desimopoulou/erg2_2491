program datatxt
implicit none

integer::i,iostatus,Nmax,r
character(100),dimension(50)::town
integer,dimension(50)::Average_Yearly_Rainfall
Nmax=50
r=0 !rows
i=1 !counter
open(10,file="data.txt",iostat=iostatus)
do   	
  read(10,*,iostat=iostatus)
  if (iostatus/=0)exit !error opening the file
  r=r+1 !counts the number of lines exist
  !print*, r !result:20 rows with the titles
end do
  rewind(10) !goes the file from the beginning
if (r<=Nmax)then
  read(10,*)
  do i=1,r-1 !19 towns
    read(10,*)town(i),Average_Yearly_Rainfall(i)
    write(*,*)town(i),Average_Yearly_Rainfall(i)
  end do
else
  print*, "Error"
end if

close(10)
end program