package main

import (
    "fmt"
)

func jpy(){
    var usd float32
    var usdconvert float32
    fmt.Println("Please enter the amount of USD to convert to Japanese Yen:")
    fmt.Scanln(&usd)
    usdconvert = usd * 110.04149
    fmt.Printf("You entered: $%g\nWhich is: ¥%g\n", usd, usdconvert)
}

func gbp(){
    var usd float32
    var usdconvert float32
    fmt.Println("Please enter the amount of USD to convert to Pound Sterling:")
    fmt.Scanln(&usd)
    usdconvert = usd * 0.72631279
    fmt.Printf("You entered: $%g\nWhich is: £%g\n", usd, usdconvert)
}

func euro(){
    var usd float32
    var usdconvert float32
    fmt.Println("Please enter the amount of USD to convert to Euros:")
    fmt.Scanln(&usd)
    usdconvert = usd * 0.84464162
    fmt.Printf("You entered: $%g\nWhich is: €%g\n", usd, usdconvert)
}

func inr(){
    var usd float32
    var usdconvert float32
    fmt.Println("Please enter the amount of USD to convert to Indian Rupees:")
    fmt.Scanln(&usd)
    usdconvert = usd * 72.981386
    fmt.Printf("You entered: $%g\nWhich is: ₹%g\n", usd, usdconvert)
}

func main() {
    var currency int
    fmt.Println("Enter the currency you'd like to convert to")
    fmt.Println("1: JPY")
    fmt.Println("2: GBP")
    fmt.Println("3: Euro")
    fmt.Println("4: INR")
    fmt.Scanln(&currency)
    switch currency{
        case 1:
            jpy()
        case 2:
            gbp()
        case 3:
            euro()
        case 4:
            inr()
        default:
            fmt.Println("Program exiting...\n")
    }
}
