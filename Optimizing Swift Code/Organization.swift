//
//  Organization.swift
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

class Organization {
    
    var employees: [Employee] = []
    
    func createEmployees() {
        
        for count in 1...count {
            
            let employeeID = "employee" + String(count)
            let age = Int(arc4random_uniform(47)) + 18
            
            let employee = Employee(firstName: "first"+String(count), lastName: "last"+String(count), age: age, streetAddress: String(count)+" Main St", zip: "90210", employeeID: employeeID)
            
            employees.append(employee)
            
            print("Employee \(count) created.")
            
        } // end while
                
    } // end func createEmployees()
    
} // end class Organization
