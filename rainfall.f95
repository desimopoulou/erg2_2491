program datatxt
implicit none

integer::i
character(100),dimension(5)::town
integer,dimension(5)::Average_Yearly_Rainfall

open(10,file="data.txt")
read(10,*)
	do i=1,5
    read(10,*)town(i),Average_Yearly_Rainfall(i)
    write(*,*)town(i),Average_Yearly_Rainfall(i)
    end do

close(10)
end program