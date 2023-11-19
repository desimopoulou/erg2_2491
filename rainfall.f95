program datatxt
implicit none

integer::i,iostatus,Nmax,l
character(100),dimension(:),allocatable::T !mia sthlh me agnwsto arithmo grammwn
integer,dimension(:),allocatable::R !omoiws
l=0 !rows
i=1 !counter
open(10,file="data.txt",iostat=iostatus)
do   	
  read(10,*,iostat=iostatus)
  if (iostatus/=0)exit !error opening the file
  l=l+1 !counts the number of lines exist
  !print*, l !result:20 rows with the titles
end do
  rewind(10) !goes the file from the beginning

print*, "Give the maximum number of lines you want: "
read(*,*)Nmax
if (Nmax<=l)then
  allocate (T(Nmax))
  allocate (R(Nmax))

  call DATA_T_R(Nmax,T,R) !opou N tha valei to Nmax

	do i=1,Nmax
  		print*,T(i),R(i)
	end do
else if (Nmax>l) then
  print*, "Many lines requested: Please enter a number under 20"
else
  print*, "Error"
end if

close(10)



contains

subroutine DATA_T_R(N,T,R)
implicit none

integer::N,i,m
character(100),dimension(N)::T
integer,dimension(N)::R

read(10,*)
m=1
	do i=1,N
    	read(10,*)T(i),R(i)
        m=m+1
    end do
    print*, "The number of lines requested were: ",N
end subroutine DATA_T_R
end program