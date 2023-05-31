program temperature_conversion
    implicit none
    character(len=100) :: input_file = "input.csv"
    character(len=100) :: output_file = "8674521_Air-Temperature-Assignment.csv"
    character(len=100) :: line
    real :: celsius, kelvin
    integer :: num_temps, i
    character(len=100), parameter :: delimiter = ","
    
    ! Open the input and output files
    open(unit=10, file=input_file, status='old', action='read')
    open(unit=20, file=output_file, status='new', action='write')

    ! Read the temperature values, convert to Kelvin, and write to the output file
    do
        read(10, '(A)', iostat=i) line
        if (i /= 0) exit
        read(line, *) celsius
        kelvin = celsius + 273.15
        write(20, '(F8.2)') kelvin
    end do

    ! Close the input and output files
    close(10)
    close(20)

    write(*, *) "Conversion completed successfully!"
    
end program temperature_conversion

