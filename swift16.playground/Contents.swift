protocol CanAct {
    func act()
    func work()
}
protocol CanDirect {
    func direct()
    func work()
}
protocol CanWrite {
    func write()
    func work()
}

extension CanAct {
    // default implementation
    func work() {
        print("This person works in the film industry.")
    }
}
extension CanDirect {
    // default implementation
    func work() {
        print("This person works in the film industry.")
    }
}
extension CanWrite {
    // default implementation
    func work() {
        print("This person works in the film industry.")
    }
}

class Person {
    let id : Int
    let name : String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Actor: Person, CanAct {
    func act() {
        print("This person is acting.")
    }
}
class Director: Person, CanDirect {
    func direct() {
        print("This person is directing.")
    }
}
class Writer: Person, CanWrite {
    func write() {
        print("This person is writing.")
    }
}

let actor = Actor(id: 100, name: "Actor")
let director = Director(id: 200, name: "Director")
let writer = Writer(id: 300, name: "Writer")

actor.act()
director.direct()
writer.write()
