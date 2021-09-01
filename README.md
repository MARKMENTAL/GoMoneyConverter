# GoMoneyConverter
A program I made to convert USD to various currencies. It was originally written with Perl but i have converted it to Go for easier maintainability.

# GCCGO Build & Run Instructions
This program was built with GNU's Go Compiler: GCCGO,
to build from source, from within a folder containing `moneyconverter.go` run these commands in a terminal

`gccgo -c moneyconverter.go`
`gccgo -o moneyconverter  moneyconverter.o`

Now you can run the program by typing in
`./moneyconverter`
