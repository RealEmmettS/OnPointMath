//
//  ArrayForCalculations.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/22/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import Foundation

var selectedCalcID: Double = 0.0
var selectedCalcName: String = ""


//Structs to set up the array values (it makes array values easier to pull and sort in the TableView)
struct Headline {
    var id: Double
    var title: String
}
struct SectionHeadline {
    var id: Double
    var title: String
    var items: Array<Headline>
}

//Investment ID:     1
//Geometry ID:       2
//Advanced ID:       3



let allSections = invSections+geoSections+advSections
let allItems = invest+geoArea+geoVolume+geoSA+geoLSA+advPythag+advPhysics+advConv+advOther

let invSections = [SectionHeadline(id: 1.0, title: "Investments", items: invest)]
let invest = [
    Headline(id: 1.01, title: "Simple Interest"),
    Headline(id: 1.02, title: "Compound Interest"),
    Headline(id:1.03, title: "Car Loan")
]

//MARK: Geometry
let geoSections = [
    SectionHeadline(id: 2.0, title: "Area", items: geoArea),
    SectionHeadline(id: 2.1, title: "Volume", items: geoVolume),
    SectionHeadline(id: 2.2, title: "Surface Area", items: geoSA),
    SectionHeadline(id: 2.3, title: "Lateral Surface Area", items: geoLSA)
]
let geoArea = [
    Headline(id: 2.01, title: "Triangle"),
    Headline(id: 2.02, title: "Rectangle"),
    Headline(id: 2.03, title: "Parallelogram"),
    Headline(id: 2.04, title: "Circle")
]
let geoVolume = [
    Headline(id: 2.11, title: "Cube"),
    Headline(id: 2.12, title: "Cone"),
    Headline(id: 2.13, title: "Cylinder"),
    Headline(id: 2.14, title: "Sphere")
]
let geoSA = [
    Headline(id: 2.21, title: "Cube"),
    Headline(id: 2.22, title: "Rectangular Prism"),
    Headline(id: 2.23, title: "Cylinder"),
    Headline(id: 2.24, title: "Triangular Prism")
]
let geoLSA = [
    Headline(id: 2.31, title: "Rectangular Prism"),
    Headline(id: 2.32, title: "Cylinder")
]





//MARK: Advanced
let advSections = [
    SectionHeadline(id: 3.0, title: "Pythagorean Theorum", items: advPythag),
    SectionHeadline(id: 3.1, title: "Physics", items: advPhysics),
    SectionHeadline(id: 3.2, title: "Conversions", items: advConv),
    SectionHeadline(id: 3.3, title: "Other", items: advOther)
]
let advPythag = [
    Headline(id: 3.01, title: "Hypotenuse"),
    Headline(id: 3.02, title: "Leg")
]
let advPhysics = [
    Headline(id: 3.11, title: "Speed"),
    Headline(id: 3.12, title: "Acceleration")
]
let advConv = [
    Headline(id: 3.21, title: "Feet to Meters"),
    Headline(id: 3.22, title: "Meters to Feet"),
    Headline(id: 3.23, title: "Mile to Kilometer"),
    Headline(id: 3.24, title: "Kilometer to Mile"),
    Headline(id: 3.25, title: "Gallon to Liter"),
    Headline(id: 3.26, title: "Liter to Gallon"),
    Headline(id: 3.27, title: "Fraction to Decimal"),
    Headline(id: 3.28, title: "Feet to Inches"),
    Headline(id: 3.29, title: "Inches to Feet"),
    Headline(id: 3.210, title: "Fahrenheit to Celsius"),
    Headline(id: 3.211, title: "Celsius to Fahrenheit"),
]
let advOther = [
    Headline(id: 3.31, title: "Square Root")
]
