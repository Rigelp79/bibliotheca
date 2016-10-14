//
//  tome.swift
//  bibliotheca
//
//  Created by Rigel Preston on 10/12/16.
//  Copyright © 2016 Rigel Preston. All rights reserved.
//

import Foundation


class Book {
    
    var Title: String
    var Genre: String
    var isCheckedOut: Bool = false
    var checkOutDate = Date()
    var checkInDate = Date()
    let calendar = Calendar.current
    let dueDate: Date
    
    
    init(Title: String, Genre: String) {
        
        self.Title = Title
        self.Genre = Genre
        dueDate = calendar.date(byAdding: .day, value: 7, to: Date())!
    }
    
}
