// force unwrapping
let optional0: String? = "John Doe"
let string0: String = optional0!

// check for nil value
let optional1: String? = "John Doe"
if optional1 != nil {
    let string1: String = optional1!
} else {
    print("nil value encountered")
}

// optional binding
let optional2: String? = "John Doe"
if let safeOptional = optional2 {
    let string2: String = safeOptional
} else {
    print("nil value encountered")
}

// nil coalescing operator
let optional3: String? = nil
let string3: String = optional3 ?? "John Doe"


// optional chaining
struct OptionalObject {
    let attribute = 123
    func method() -> Int {
        return 123
    }
}
let optionalObject: OptionalObject? = OptionalObject()
let optAttribute = optionalObject?.attribute
let optMethod = optionalObject?.method()
