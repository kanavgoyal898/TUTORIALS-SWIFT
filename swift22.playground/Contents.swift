import UIKit

class CustomClass {
    var value = "original value"
    static let customClassSingleton = CustomClass()
}

var objectA = CustomClass()
objectA.value = "updated value 1"
var objectB = CustomClass()

print(objectB.value)
print(objectA.value)

var objectC = CustomClass.customClassSingleton
var objectD = CustomClass.customClassSingleton
objectC.value = "updated value 2"

print(objectD.value)
print(objectC.value)

