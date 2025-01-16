//
//  main.swift
//  InventoryManagement
//
//  Created by StudentPM on 1/9/25.
//

import Foundation

var peanutButterStock = 10
var breadStock = 15
var sugarStock = 5
var pattiesStock = 10
var cigarrettesStock = 25

var peanutButterInCart = 0
var breadInCart = 0
var sugarInCart = 0
var pattiesInCart = 0
var cigarettesInCart = 0

let peanutButterPrice = 4.99
let breadPrice = 5.99
let sugarPrice = 4.99
let pattiesPrice = 9.99
let cigarettesPrice = 10.99


var currentTotal = 0.00
var totalSales = 0.00

storeMainMenu()

/* This is the store's main menu, enter a number and it will take you to the menu you chose */
func storeMainMenu(){
    print("Welcome to the grocery store! Let us know how we can help you (Enter number of selection):")
    print("1. Add item to cart")
    print("2. Remove item from cart")
    print("3. Check if item is in stock")
    print("4. Admin Menu")
    print("5. Empty Cart")
    print("6. Checkout")
    
    if let userInput = readLine(), let number = Int(userInput), number < 7{
        if number == 1 {
            addItemMenu()
        }
        if number == 2 {
            removeItemMenu()
        }
        if number == 3 {
            checkItemStock()
        }
        if number == 4 {
            enterAdminID()
        }
        if number == 5 {
            emptyCart()
        }
        if number == 6 {
            checkoutItems()
        }
    }
    else{
        print("Choose an appropriate option!")
        storeMainMenu()
    }
}

// This function allows you to chose what item you want and how much you want
func addItemMenu(){
    print("wha chu wan?")
    print("1. Peanut Butter - $4.99")
    print("2. Bread - $5.99")
    print("3. Bag of sugar - $4.99")
    print("4. Burger patties $9.99")
    print("5. Cigarettes - $10.99")
    
    if let userInput = readLine(), let number = Int(userInput), number < 6{
        if number == 1 {
            print("How much Peanut Butter you want?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (peanutButterStock + 1){
                print("You added \(number) jar(s) of Peanut Butter!")
                
                currentTotal += (Double(number) * peanutButterPrice)
                peanutButterInCart += number
                peanutButterStock -= number
                
                print("Current Total: $\(currentTotal)")
                
                storeMainMenu()
            }
            else {
                print("choose an appropriate amount!")
                storeMainMenu()
            }
        }
        if number == 2 {
            print("How much Bread you want?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (breadStock + 1){
                print("You added \(number) loaf/loaves of bread!")
                
                currentTotal += (Double(number) * breadPrice)
                breadInCart += number
                breadStock -= number
                
                print("Current Total: $\(currentTotal)")
                
                storeMainMenu()
            }
            else {
                print("choose an appropriate amount!")
                storeMainMenu()
            }
        }
        if number == 3 {
            print("How much Bags of sugar you want?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (sugarStock + 1){
                print("You added \(number) bag(s) of sugar!")
                
                currentTotal += (Double(number) * sugarPrice)
                sugarInCart += number
                sugarStock -= number
                
                print("Current Total: $\(currentTotal)")
                
                storeMainMenu()
            }
            else {
                print("choose an appropriate amount!")
                storeMainMenu()
            }
        }
        if number == 4 {
            print("How many burger patty packs you want?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (pattiesStock + 1){
                print("You added \(number) pack(s) of burger patties!")
                
                currentTotal += (Double(number) * pattiesPrice)
                pattiesInCart += number
                pattiesStock -= number
                
                print("Current Total: $\(currentTotal)")
                
                storeMainMenu()
            }
            else {
                print("choose an appropriate amount!")
                storeMainMenu()
            }
        }
        if number == 5 {
            print("How many cigarette packs you want?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (cigarrettesStock + 1){
                print("You added \(number) pack(s) of cigarettes!")
                
                currentTotal += (Double(number) * cigarettesPrice)
                cigarettesInCart += number
                cigarrettesStock -= number
                
                print("Current Total: $\(currentTotal)")
                
                storeMainMenu()
            }
            else {
                print("choose an appropriate amount!")
                storeMainMenu()
            }
        }
    }
    else{
        print("choose an appropriate number!")
        storeMainMenu()
    }
}

//Here you can remove items from your cart by choosing the item and typing the amount of the item you want removed
func removeItemMenu(){
    print("What would you like to remove from cart?")
    print("1. Peanut Butter")
    print("2. Bread")
    print("3. Bag of Sugar")
    print("4. Burger Patties")
    print("5. Cigarettes")
    
    if let userInput = readLine(), let number = Int(userInput), number < 6{
        if number == 1{
            print("How much Peanut Butter would you like to remove?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (peanutButterInCart + 1){
                peanutButterInCart -= number
                peanutButterStock += number
                print("You removed \(number) jar(s) of Peanut Butter")
                
                storeMainMenu()
            }
            else{
                print("choose an appropriate amount")
                storeMainMenu()
            }
        }
        if number == 2{
            print("How much Bread would you like to remove?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (breadInCart + 1){
                breadInCart -= number
                breadStock += number
                print("You removed \(number) loaf/loaves of bread")
                
                storeMainMenu()
            }
            else{
                print("choose an appropriate amount")
                storeMainMenu()
            }
        }
        if number == 3{
            print("How many Bags of Sugar would you like to remove?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (sugarInCart + 1){
                sugarInCart -= number
                sugarStock += number
                print("You removed \(number) bag(s) of sugar")
                
                storeMainMenu()
            }
            else{
                print("choose an appropriate amount")
                storeMainMenu()
            }
        }
        if number == 4{
            print("How many Burger Patty packs would you like to remove?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (pattiesInCart + 1){
                pattiesInCart -= number
                pattiesStock += number
                print("You removed \(number) pack(s) of burger patties")
                
                storeMainMenu()
            }
            else{
                print("choose an appropriate amount")
                storeMainMenu()
            }
        }
        if number == 5{
            print("How many packs of cigarettes would you like to remove?")
            
            if let userInput = readLine(), let number = Int(userInput), number < (cigarettesInCart + 1){
                cigarettesInCart -= number
                cigarrettesStock += number
                print("You removed \(number) pack(s) of cigarettes")
                
                storeMainMenu()
            }
            else{
                print("choose an appropriate amount")
                storeMainMenu()
            }
        }
    }
    else{
        print("Choose an appropriate number!")
        storeMainMenu()
    }
}

//Here you can check the stock of an item by pressing its set number
func checkItemStock(){
    print("What item would you like to check if it's in stock?")
    print("1. Peanut Butter")
    print("2. Bread")
    print("3. Bags of Sugar")
    print("4. Burger Patties")
    print("5. Cigarettes")
    
    if let userInput = readLine(), let number = Int(userInput), number < 6 {
        if number == 1{
            print("There is \(peanutButterStock) peanut butter in stock")
            storeMainMenu()
        }
        if number == 2{
            print("There is \(breadStock) loaf/loaves of bread in stock")
            storeMainMenu()
        }
        if number == 3{
            print("There is \(sugarStock) bag(s) of sugar in stock")
            storeMainMenu()
        }
        if number == 4{
            print("There is \(pattiesStock) pack(s) of burger patties")
            storeMainMenu()
        }
        if number == 5{
            print("There is \(cigarrettesStock) pack(s) of cigarettes")
            storeMainMenu()
        }
    }
    else{
        print("choose an appropriate number!")
        storeMainMenu()
    }
}

//You enter the admin ID here to access the Admin menu, it's 0000 in case you weren't sure
func enterAdminID(){
    print("Enter Admin ID:")
    if let userInput = readLine(), let number = Int(userInput){
        if number == 0000{
            viewAdminMenu()
        }
        else{
            print("ID is invalid! Try another number!")
            storeMainMenu()
        }
    }
}

//After entering the ID, you can see the Admin menu
func viewAdminMenu(){
    print("Welcome to the Admin menu! Let us know how we can help you! (Enter Number of selection):")
    print("1. Restock inventory")
    print("2. Generate report")
    print("3. Check number of items")
    print("4. Quit admin menu")
    
    if let userInput = readLine(), let number = Int(userInput), number < 5{
        if number == 1{
            restockInventory()
        }
        if number == 2{
            print("Summary Report:")
            print("Remaining Peanut Butter: \(peanutButterStock) items")
            print("Remaining Bread: \(breadStock) items")
            print("Remaining Sugar: \(sugarStock) items")
            print("Remaining Burger Patties: \(pattiesStock) items")
            print("Remaining Cigarettes: \(cigarrettesStock) items")
            print("Total Sales: $\(totalSales)")
            
            storeMainMenu()
        }
        if number == 3{
            checkItemStock()
        }
        if number == 4{
            storeMainMenu()
        }
    }
    else{
        print("choose an appropriate number!")
        storeMainMenu()
    }
}

/* This just sets what you have in your cart and current total to 0. And it also adds back what was emptied to the stocks */
func emptyCart(){
    print("Your cart is now empty!")
    peanutButterStock += peanutButterInCart
    breadStock += breadInCart
    sugarStock += sugarInCart
    pattiesStock += pattiesInCart
    cigarrettesStock += cigarettesInCart
    
    peanutButterInCart = 0
    breadInCart = 0
    sugarInCart = 0
    pattiesInCart = 0
    cigarettesInCart = 0
    
    currentTotal = 0.00
    
    storeMainMenu()
}

/* When you check out you can see your grand total and what you purchased, then it also sets all the items in your cart and your current total to 0 */
func checkoutItems(){
    print("Thank you for shopping with us!")
    print("You purchased the following:")
    print("Peanut Butter: \(peanutButterInCart)")
    print("Bread: \(breadInCart)")
    print("Sugar: \(sugarInCart)")
    print("Burger Patties: \(pattiesInCart)")
    print("Cigarettes: \(cigarettesInCart)")
    print("Your grand total including tax (9.25%) is : $\(currentTotal + (currentTotal * 0.0925))")
    
    totalSales += currentTotal
    
    peanutButterInCart = 0
    breadInCart = 0
    sugarInCart = 0
    pattiesInCart = 0
    cigarettesInCart = 0
    
    currentTotal = 0.00
    
    storeMainMenu()
}

// You can restock an item of your choice here
func restockInventory(){
    print("What would you like to restock? (Enter number of selection):")
    print("1. Peanut Butter")
    print("2. Bread")
    print("3. Sugar")
    print("4. Burger Patties")
    print("5. Cigarettes")
    
    if let userInput = readLine(), let number = Int(userInput), number < 6{
        if number == 1{
            print("How many units of peanut butter would you like to restock?")
            if let userInput = readLine(), let number = Int(userInput){
                print("Restocked \(number) units of peanut butter")
                peanutButterStock += number
                
                storeMainMenu()
            }
        }
        if number == 2{
            print("How many units of bread would you like to restock?")
            if let userInput = readLine(), let number = Int(userInput){
                print("Restocked \(number) units of bread")
                breadStock += number
                
                storeMainMenu()
            }
        }
        if number == 3{
            print("How many units of sugar would you like to restock?")
            if let userInput = readLine(), let number = Int(userInput){
                print("Restocked \(number) units of sugar")
                sugarStock += number
                
                storeMainMenu()
            }
        }
        if number == 4{
            print("How many units of burger patties would you like to restock?")
            if let userInput = readLine(), let number = Int(userInput){
                print("Restocked \(number) units of burger patties")
                pattiesStock += number
                
                storeMainMenu()
            }
        }
        if number == 5{
            print("How many units of cigarettes would you like to restock?")
            if let userInput = readLine(), let number = Int(userInput){
                print("Restocked \(number) units of cigarettes")
                cigarrettesStock += number
                
                storeMainMenu()
            }
        }
    }
    else{
        print("choose an appropriate number!")
        storeMainMenu()
    }
}
