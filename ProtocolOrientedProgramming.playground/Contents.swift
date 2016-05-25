//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol Bird {
    var name : String { get }
    var canFly : Bool { get }
}

protocol Flyable {
    var airSpeedVelocity : Double { get }
}

struct Crow : Bird,Flyable {
    let name: String
    let airSpeedVelocity: Double
}

extension Bird where Self: Flyable
{
    var canFly:Bool { return true}
}

var smallCrow = Crow(name: "Ram", airSpeedVelocity: 55)


