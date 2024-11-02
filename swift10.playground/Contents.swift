struct User {
    let name : String
    let password : String
    var followers : Int
    var isActive : Bool
    
    init(name: String, password: String, followers: Int, isActive: Bool) {
        self.name = name
        self.password = password
        self.followers = followers
        self.isActive = isActive
    }
    
    func display() {
        print("Username: \(name)")
        print("Followers: \(followers)")
        print("Status: \(isActive)")
    }
}


var user = User(name: "John Doe", password: "johndoe123", followers: 100, isActive: true)
user.display()
