//
//  MathOperations.swift
//  Survey
//
//  Created by mac on 03/05/22.
//

import Foundation
import SwiftUI

class Math{
    var signal: String = ""
    var addition: (Int,Int)->Int = {(a: Int, b: Int)->Int in return a + b}
    var substraction: (Int,Int)->Int = {(a: Int, b: Int)->Int in return a - b}
    var multiply: (Int,Int)->Int = {(a: Int, b: Int)->Int in return a * b}
    var operations: [(Int,Int)->Int] = []
}



