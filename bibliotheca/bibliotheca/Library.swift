//
//  Library.swift
//  bibliotheca
//
//  Created by Rigel Preston on 10/12/16.
//  Copyright © 2016 Rigel Preston. All rights reserved.
//

import Foundation





class libraryClass {
    
    
    
    var library : [String:Book] = [:]
    
    
    func whatsInTheLibrary() {
        if library.isEmpty {
            print("The library is empty.")
        } else {
            print("The library has \(library.count) book(s).\n")
            for (id, book) in library {
                var isCheckedOut = ""
                if book.isCheckedOut == true{
                    isCheckedOut = "yes"
                } else {
                    isCheckedOut = "no"
                }
                print("\(id), \(book.Title), '\(book.Genre)', Checked Out?: \(isCheckedOut), Date Checked In: \(book.checkInDate), Date Checked Out: \(book.checkOutDate)\n")
            }
        }
    }
    
    func bookOut() {
        
        whatsInTheLibrary()
        print("To check out a book, enter the ID ")
        let removeid = io.getInput()
        for (id, book) in library {
            if id == removeid {
                print("Checking out \(book.Title)")
                book.isCheckedOut = true
                book.checkOutDate = Date()
            }
        }
        
    }
    
    
    func bookAdd() {
        
        print("You may donate a book.")
        let bookTitle = io.getInput()
        print("enter id")
        
        let id = io.getInput()
        print("enter genre")
        
        let genre = io.getInput()
        print("Your book has been added.")
        
        library[id] = Book(Title: bookTitle, Genre: genre)
        
    }
    
    func CheckIn() {
        
        whatsInTheLibrary()
        print("To return a book, enter the ID")
        let addid = io.getInput()
        for (id, book) in library {
            if id == addid {
                print("Thank you for returning \(book.Title)")
                book.isCheckedOut = false
                book.checkInDate = Date()
            }
        }
    }

    
    
    
    
    
    
    
}
