// stored properties

let numberOfPeople = 12
let slicesPerPerson = 4


// observed properties

var pizzaInInches = 16 {
    willSet {
        print("pizzaInInches oldValue: \(pizzaInInches)")
        print("pizzaInInches newValue: \(newValue)")
    }
    
    didSet {
        print("pizzaInInches oldValue: \(oldValue)")
        print("pizzaInInches newValue: \(pizzaInInches)")
    }
        
}

// computed properties

var numberOfSlices : Int {
    get {
        return pizzaInInches - 4
    }
    
    set {
        print("numberOfSlices: \(newValue)")
    }
}

var numberOfPizzas : Int {
    get {
        return (numberOfPeople * slicesPerPerson) / numberOfSlices
    }
    
    set {
        print("numberOfPizzas: \(newValue)")
    }
}

pizzaInInches = 10

print("numberOfSlices: \(numberOfSlices)")
print("numberOfPizzas: \(numberOfPizzas)")
