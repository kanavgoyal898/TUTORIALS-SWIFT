// Swift Access Levels
//1. open: Accessible and sub-classable outside the defining module.
//2. public: Accessible outside the module, but sub-classing and overriding are limited.
//3. internal: Default level, accessible within the defining module.
//4. fileprivate: Accessible only within the defining source file.
//5. private: Accessible only within the enclosing declaration.

// Structs: Value Types: Stored on Stack memory (True Immutability) (No Memory Leaks) (Thread-safe)
// Classes: Reference Types: Stored in Heap memory with reference through Stack memory (Psuedo Immutability)

class UserClass {
    var username: String
    var followers: Int
    
    init(username: String, followers: Int) {
        self.username = username
        self.followers = followers
    }
    
    func reverseName() {
        self.username = String(username.reversed())
    }
}

struct UserStruct {
    var username: String
    var followers: Int
    
    mutating func reverseName() {
        self.username = String(username.reversed())
    }
}

var userC1 = UserClass(username: "John", followers: 100)
var userC2 = userC1
userC2.followers = 50
var userS1 = UserStruct(username: "John", followers: 100)
var userS2 = userS1
userS2.followers = 50

print("userC1 followers: \(userC1.followers)")
print("userC2 followers: \(userC2.followers)")
print("userS1 followers: \(userS1.followers)")
print("userS2 followers: \(userS2.followers)")

let tuple1 = ("John", true, 123)
let tuple2 = (name: "John", isActive: true, followers: 123)
let tuple3 : (name: String, isActive: Bool, followers: Int)
tuple3 = (name: "John", isActive: true, followers: 123)

print(tuple1.0, tuple1.1, tuple1.2)
print(tuple2.name, tuple2.isActive, tuple2.followers)
