PROGRAM bbb
USE OMP_LIB

implicit none
integer(4):: i, sampleSize, ndays
character(32):: cha1, cha2, cha3, arg1, arg2

call get_command_argument(1,arg1)
call get_command_argument(2,arg2)
read(arg1,'(i4)') sampleSize
read(arg2,'(i4)') ndays

!$OMP PARALLEL PRIVATE(cha1, cha2)
!$OMP DO
Do i=1,5
    write( cha1, '(i4)' ) i*(sampleSize/5)-sampleSize/5+1+3
    write( cha2, '(i4)' ) i*(sampleSize/5)
    write( cha3, '(i4)' ) ndays
    call system('./mhm-nitrate '//trim(adjustl( cha1 ))//' '//trim(adjustl( cha2 ))//' '//trim(adjustl( cha3 )))
end do
!$OMP END DO
!$OMP END PARALLEL


END
