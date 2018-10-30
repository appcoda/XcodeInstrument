//
//  ViewController.swift
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

import UIKit

let count = 1000000

class ViewController: UIViewController, UITextViewDelegate {
    
    var startStopToggle: Bool = false
    let organization: Organization = Organization()
    let ages: Ages = Ages()
    
    @IBOutlet weak var genericsBackingView: UIView!
    @IBOutlet weak var inheritanceBackingView: UIView!
    @IBOutlet weak var childClassInstancesCreatedText: UITextField!
    @IBOutlet weak var newEmployeesTextView: UITextView!
    @IBOutlet weak var numberGenericComparisonsTextField: UITextField!
    @IBOutlet weak var genericsCompareTextView: UITextView!
    @IBOutlet weak var ageEntryField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        genericsBackingView.backgroundColor = UIColor.white
        genericsBackingView.layer.borderColor = UIColor.blue.cgColor
        genericsBackingView.layer.borderWidth = 3.0
        
        let age = ageEntryField.text

        inheritanceBackingView.backgroundColor = UIColor.white
        inheritanceBackingView.layer.borderColor = UIColor.blue.cgColor
        inheritanceBackingView.layer.borderWidth = 3.0
        childClassInstancesCreatedText.text = "..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        newEmployeesTextView.text = "Creating employees..."
        childClassInstancesCreatedText.text = "..."
        genericsCompareTextView.text = "" //"Creating ages..."
        numberGenericComparisonsTextField.text = "..."
        self.view.setNeedsLayout()
        
        createEmployees()
        // createAges()
    }
    
    func createAges() {
        
        ages.createAges()
        
        childClassInstancesCreatedText.text = String(count)
        newEmployeesTextView.text = "DONE creating ages...\n"
        self.view.setNeedsLayout()
        print("\n")
        
    } // end func createAges()

    func createEmployees() {
        
        organization.createEmployees()
        
        childClassInstancesCreatedText.text = String(count)
        newEmployeesTextView.text = "DONE creating employees...\n"
        self.view.setNeedsLayout()
        print("\n")

    } // end func createEmployees()
    
    @IBAction func startButtonTapped(_ sender: Any) {
        
        while true {
            
            DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
                
                for count in 0...count-1 { // 0...999999
                    
                        //let employeeInfo = self.organization.employees[count].showEmployee()
                        let employeeInfo = self.organization.employees[count].show()
                    
                        DispatchQueue.main.async {

                            self.newEmployeesTextView.text += employeeInfo
                            print("\(employeeInfo)\n")
                            
                        }
                    
                } // end for count in 0...count-1
                
            } // end DispatchQueue.global
            
        } // end while true

    } // end func startButtonTapped
    
    var numberGenericComparisons: Int = 0
    
    @IBAction func genericsStartButtonTapped(_ sender: Any) {
        
        // Cannot convert value of type 'String!' to expected argument type 'inout String'
        // self.newEmployeesTextView.text += "."
        //self.genericsCompareTextView.text = self.genericsCompareTextView.text + "."
        self.genericsCompareTextView.text += "."
        
//        while true {
//            let age = Int(arc4random_uniform(47)) + 18
//            _ = exists(item: age, inArray: ages.ages)
//        }
        /*
        var ageFound: Bool = false
        
        if (ageEntryField.text?.isEmpty)! {
            genericsCompareTextView.text = "Please enter a valid age..."
        }
        else {
            let age = Int((ageEntryField.text)!)
            ageFound = exists(item: age!, inArray: ages.ages)
        }
        
        if ageFound {
            genericsCompareTextView.text = "Age found in array"
        }
        else {
            genericsCompareTextView.text = "Age NOT found in array"
        }
        */
    } // end func genericsStartButtonTapped
    
    func scrollTextViewToBottom(textView: UITextView) {
        if textView.text.count > 0 {
            let location = textView.text.count - 1
            let bottom = NSMakeRange(location, 1)
            textView.scrollRangeToVisible(bottom)
        }
    }

}

/*
 let employeeInfo = """
 First name: \(employees[count].firstName)
 Last name: \(employees[count].lastName)
 Age: \(employees[count].age)
 Street Address: \(employees[count].streetAddress)
 Zip Code: \(employees[count].zip)
 """
 //print("\(employeeInfo)\n")

let employeeInfo = """
First name: \(employee.firstName)
Last name: \(employee.lastName)
Age: \(employee.age)
Street Address: \(employee.streetAddress)
Zip Code: \(employee.zip)
"""
print("\(employeeInfo)\n")
*/
/*
if startStopToggle == false {
    startStopToggle = true
}
else {
    startStopToggle = false
}
*/

/*
DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
    while self.startStopToggle {
        
        var count: Int = 1
        var employeeID = "employee" + String(count)
        let age = Int(arc4random_uniform(47)) + 18
        
        let employee = Employeee(firstName: "first"+String(count), lastName: "last"+String(count), age: age, streetAddress: String(count)+" Main St", zip: "90210", employeeID: employeeID)
        
        print(employee.isRetirementReady())
        DispatchQueue.main.async {
            let info = employee.show()
            self.childClassInstancesCreatedText.text! = String(count)
            self.newEmployeesTextView.text = info
        }
        count += 1
        employeeID = "employee" + String(count)
    } // end while
} // end DispatchQueue.global
*/
