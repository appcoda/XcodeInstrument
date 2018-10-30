//
//  People.swift
//  Optimizing Swift Code
//
//  Created by Andrew Jaffee on 10/22/18.
//
/*
 
 Copyright (c) 2018 Andrew L. Jaffee, microIT Infrastructure, LLC, and iosbrain.com.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
*/

import Foundation

class Person {
    
    /*
     final var firstName: String
     final var lastName: String
     final var age: Int
     final var streetAddress: String
     final var zip: String
    */
    var firstName: String
    var lastName: String
    var age: Int
    var streetAddress: String
    var zip: String
    
    init(firstName: String,
         lastName: String,
         age: Int,
         streetAddress: String,
         zip: String) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.streetAddress = streetAddress
        self.zip = zip
        
    }
    
    func show() -> String {
        let line = """
        First name: \(firstName)
        Last name: \(lastName)
        Age: \(age)
        Street Address: \(streetAddress)
        Zip Code: \(zip)
        """
        
        return line
    }
    
} // end class Person
