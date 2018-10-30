//
//  Employees.swift
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

class Employee: Person {
    
    var employeeID: String
    var retirementAge: Int = 60
    
    init(firstName: String,
         lastName: String,
         age: Int,
         streetAddress: String,
         zip: String,
         employeeID: String) {
        
        self.employeeID = employeeID
        super.init(firstName: firstName, lastName: lastName, age: age, streetAddress: streetAddress, zip: zip)
    }
    
    func isRetirementReady() -> Bool {
        if age >= retirementAge {
            return true
        }
        else {
            return false
        }
    }
    
    override func show() -> String {
        var line = super.show()
        line += "Employee ID: \(employeeID)\n"
        line += "Retirement Age: \(retirementAge)"
        return line
    }
    
    final func showEmployee() -> String {
        let line = """
        First name: \(firstName)
        Last name: \(lastName)
        Age: \(age)
        Street Address: \(streetAddress)
        Zip Code: \(zip)
        Employee ID: \(employeeID)
        Zip Code: \(zip)
        """
        
        return line

    }
    
}  // end class Employee
