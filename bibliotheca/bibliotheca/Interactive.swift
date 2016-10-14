//
//  Interactive.swift
//  bibliotheca
//
//  Created by Rigel Preston on 10/11/16.
//  Copyright © 2016 Rigel Preston. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    var currentInput: String = ""
    
    
    
    func go() {
        
        while !done {
            
            
            displayMainmenu()
            io.writeMessage("\nEnter 'Return' to Return a book, 'Check out' to check out a book, 'Donate' to add a book, 'View' to see what's in the library, 'Help' to get help, or 'Quit' to leave the library.\n ")
            currentInput = io.getInput().uppercased()
 //Books will be looked up by title
           /* if currentInput == "q" {
                done = true
            } else if currentInput == "Checkout" {
                inTheLibrary.bookOut()
            } else if currentInput == "Find" {
                inTheLibrary.bookFind()
            } else if currentInput == "Donate" {
                inTheLibrary.bookAdd()
            } else if currentInput == "View" {
                inTheLibrary.bookAdd()
            }  else if currentInput == "h" {
                Help()
            } else {
                print ("Incorrect, please select 'h' for Help if you need assistance!")
            }*/
            switch currentInput {
            case "QUIT":
                done = true
            case "RETURN":
                inTheLibrary.CheckIn()
            case "CHECK OUT":
                inTheLibrary.bookOut()
            case "DONATE":
                inTheLibrary.bookAdd()
            case "VIEW":
                inTheLibrary.whatsInTheLibrary()
            case "HELP":
                HELP()
            default:
               print ("\nIncorrect, please select 'help' for Help if you need assistance!\n")
            }
        }
        print ("Exiting....")
        
        return
    }
    
    func displayMainmenu() {
        print("Welcome to Bibliotheca!")
    }
    
    func HELP() {
        io.writeMessage("\nWelcome to Bibliotheca. Bibliotheca is latin for Library. In order to see books available type in 'View'. If you wish to check a book out, please type 'Check out'. You will check this book out by ID, which is the three letter code attributed to the book that precedes the title of the book. To return a book, please follow the ID format. To leave the application, please type 'Quit'.\n")

    }
    
    }
