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
    var group: String
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
    Headline(id: 1.01, title: "Simple Interest", group: "Investments"),
    Headline(id: 1.02, title: "Compound Interest", group: "Investments")
    //Headline(id:1.03, title: "Car Loan", group: "Investments")
]

//MARK: Geometry
let geoSections = [
    SectionHeadline(id: 2.0, title: "Area", items: geoArea),
    SectionHeadline(id: 2.1, title: "Volume", items: geoVolume),
    SectionHeadline(id: 2.2, title: "Surface Area", items: geoSA),
    SectionHeadline(id: 2.3, title: "Lateral Surface Area", items: geoLSA)
]
let geoArea = [
    Headline(id: 2.01, title: "Triangle", group: "Area"),
    Headline(id: 2.02, title: "Rectangle", group: "Area"),
    Headline(id: 2.03, title: "Parallelogram", group: "Area"),
    Headline(id: 2.04, title: "Circle", group: "Area")
]
let geoVolume = [
    Headline(id: 2.11, title: "Cube", group: "Volume"),
    Headline(id: 2.111, title: "Rectangular Prism", group: "Volume"),
    Headline(id: 2.12, title: "Cone", group: "Volume"),
    Headline(id: 2.13, title: "Cylinder", group: "Volume"),
    Headline(id: 2.14, title: "Sphere", group: "Volume")
]
let geoSA = [
    Headline(id: 2.21, title: "Cube", group: "Surface Area"),
    Headline(id: 2.22, title: "Rectangular Prism", group: "Surface Area"),
    Headline(id: 2.23, title: "Cylinder", group: "Surface Area"),
    Headline(id: 2.24, title: "Triangular Prism", group: "Surface Area")
]
let geoLSA = [
    Headline(id: 2.31, title: "Rectangular Prism", group: "Lateral Surface Area"),
    Headline(id: 2.32, title: "Cylinder", group: "Lateral Surface Area")
]





//MARK: Advanced
let advSections = [
    SectionHeadline(id: 3.0, title: "Pythagorean Theorem", items: advPythag),
    SectionHeadline(id: 3.1, title: "Physics", items: advPhysics),
    SectionHeadline(id: 3.2, title: "Conversions", items: advConv),
    SectionHeadline(id: 3.3, title: "Other", items: advOther)
]
let advPythag = [
    Headline(id: 3.01, title: "Hypotenuse", group: "Pythagorean Theorem"),
    Headline(id: 3.02, title: "Leg", group: "Pythagorean Theorem")
]
let advPhysics = [
    Headline(id: 3.11, title: "Speed", group: "Physics"),
    Headline(id: 3.12, title: "Acceleration", group: "Physics")
]
let advConv = [
    Headline(id: 3.21, title: "Feet to Meters", group: "Conversions"),
    Headline(id: 3.22, title: "Meters to Feet", group: "Conversions"),
    Headline(id: 3.23, title: "Miles to Kilometers", group: "Conversions"),
    Headline(id: 3.24, title: "Kilometers to Miles", group: "Conversions"),
    Headline(id: 3.2411, title: "US Gallons to UK Gallons", group: "Conversions"),
    Headline(id: 3.2412, title: "UK Gallons to US Gallons", group: "Conversions"),
    Headline(id: 3.25, title: "US Gallons to Liter", group: "Conversions"),
    Headline(id: 3.2511, title: "UK Gallons to Liter", group: "Conversions"),
    Headline(id: 3.26, title: "Liter to US Gallons", group: "Conversions"),
    Headline(id: 3.2611, title: "Liter to UK Gallons", group: "Conversions"),
    Headline(id: 3.27, title: "Fraction to Decimal", group: "Conversions"),
    Headline(id: 3.28, title: "Feet to Inches", group: "Conversions"),
    Headline(id: 3.29, title: "Inches to Feet", group: "Conversions"),
    Headline(id: 3.2101, title: "Fahrenheit to Celsius", group: "Conversions"),//id is 3.2101 because 3.210 is the same as 3.21
    Headline(id: 3.211, title: "Celsius to Fahrenheit", group: "Conversions"),
    Headline(id: 3.212, title: "Centimeters to Inches", group: "Conversions"),
    Headline(id: 3.213, title: "Inches to Centimeters", group: "Conversions")
]
let advOther = [
    Headline(id: 3.31, title: "Square Root", group: "Other")
]
