
import SwiftUI
import Foundation

struct ProfileModel: Identifiable {
var id = UUID()
var imageName: String
var title: String

}


var act1 = ProfileModel(imageName: "potatophoto", title: "Potato")
var act2 = ProfileModel(imageName: "lemonphoto", title: "Lemon")
var act3 = ProfileModel(imageName: "tomatophoto", title: "Tomato")
var act4 = ProfileModel(imageName: "mintphoto", title: "Mint")
var act5 = ProfileModel(imageName: "eggplantphoto", title: "Eggplant")
var act6 = ProfileModel(imageName: "applesphoto", title: "Apple")
var act7 = ProfileModel(imageName: "oangesphoto", title: "Orange")


var allProfileModel =
[
    act1 ,
    act2 ,
    act3 ,
    act4 ,
    act5 ,
    act6 ,
    act7
]
