struct User {
    let userName : String
    let password : String
    var isActive : Bool
    
    init(userName: String, password: String, isActive: Bool) {
        self.userName = userName
        self.password = password
        self.isActive = isActive
    }
    
    func checkStatus() {
        print("\(userName) : \(isActive)")
    }
    
    mutating func logIn(userName: String, password: String) {
        if self.userName == userName && self.password == password {
            isActive = true
        } else {
            print("Wrong credentials")
        }
    }
    
    mutating func logOut(userName: String, password: String) {
        if self.userName == userName && self.password == password {
            isActive = false
        } else {
            print("Wrong credentials")
        }
    }
}

var user = User(userName: "johndoe", password: "johndoe123", isActive: true)
user.logIn(userName: "johndoe", password: "johndoe123")
user.checkStatus()
user.logOut(userName: "johndoe", password: "johndoe123")
user.checkStatus()

