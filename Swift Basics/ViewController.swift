//
//  ViewController.swift
//  Swift Basics
//
//  Created by Shahzaib Mumtaz on 31/01/2022.
//

import UIKit

class ViewController: UIViewController {

    typealias AudioSample = UInt16
    
    var numberArray: [Int] = [1,2,3,4,5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let minValue = UInt8.min
        print("Minimum Value: \(minValue)")
        let maxValue = UInt8.max
        print("Maximum Value: \(maxValue)")
        
        let maxAmplitudeFound = AudioSample.max
        print("Using Type alias :\(maxAmplitudeFound)")
        /// maxAmplitudeFound is now 0
        
        let http404Error = (404, "Not Found")
        print("Tuples :\(http404Error)")
        /// http404Error is of type (Int, String), and equals (404, "Not Found")
        
        let (statusCode, statusMessage) = http404Error
        print("The status code is : \(statusCode)")
        /// Prints "The status code is 404"
        print("The status message is : \(statusMessage)")
        /// Prints "The status message is Not Found"
        
        /// Using index number print tuples data.
        
        print("The status code is : \(http404Error.0)")
        /// Prints "The status code is 404"
        print("The status message is : \(http404Error.1)")
        /// Prints "The status message is Not Found"
        
        /// Naming individual element when creating tuples
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is : \(http200Status.statusCode)")
        /// Prints "The status code is 200"
        print("The status message is : \(http200Status.description)")
        /// Prints "The status message is OK"
        
        
        let value = minMax(array: numberArray)
        print("Minimum value is: \(value!.min)")
        print("Maximum value is: \(value!.max)")
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
}

