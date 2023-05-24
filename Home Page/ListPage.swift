
import Foundation
import SwiftUI

struct Vegetable: Identifiable {
    var id = UUID()
    var imageName: String
    var vegetablesName: String
    var price: String
    var priceNum: String
}


var vegetable1 = Vegetable(imageName: "brinjal", vegetablesName: "Brinjal", price: "Price", priceNum: "$50")
var vegetable2 = Vegetable(imageName: "redcapsicum", vegetablesName: "Red Capsicum", price: "Price", priceNum: "$50")
var vegetable3 = Vegetable(imageName: "spinach", vegetablesName: "Spinach", price: "Price", priceNum: "$20")
var vegetable4 = Vegetable(imageName: "potatophoto", vegetablesName: "Potato", price: "Price", priceNum: "$30")


var allVegetables = [
    vegetable1,
    vegetable2,
    vegetable3,
    vegetable4
]
