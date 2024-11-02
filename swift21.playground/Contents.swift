class SuperClass {
    func method0() {
        print("This is superclass.")
    }
}

class SubClass1: SuperClass {
    func method1() {
        print("This is subclass 1")
    }
}

class SubClass2: SuperClass {
    func method2() {
        print("This is subclass 2")
    }
}

let mySuperClass = SuperClass()
let mySubClass1 = SubClass1()
let mySubClass2 = SubClass2()

let array = [mySuperClass, mySubClass1, mySubClass2]
print("array Data Type: \(type(of: array))")

for item in array {
    // forced down-casting
    if item is SubClass1 {
        let sc = item as! SubClass1
        sc.method1()
    }
    if item is SubClass2 {
        let sc = item as! SubClass2
        sc.method2()
    }
    
    // up-casting
    let sc = item as SuperClass
    sc.method0()
}

// optional down-casting
let subClass1 = array[1] as? SubClass1
subClass1?.method1()
let subClass2 = array[2] as? SubClass2
subClass2?.method2()

if let safeSubClass1 = array[1] as? SubClass1 {
    safeSubClass1.method1()
}
if let safeSubClass2 = array[2] as? SubClass2 {
    safeSubClass2.method2()
}


