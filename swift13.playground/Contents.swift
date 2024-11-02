class Member {
    let username = "johndoe123"
    let followers = 100
    var isActive = true
    
    func logIn() {
        if isActive {
            isActive = false
        }
    }
    
   func logOut() {
        if !isActive {
            isActive = true
        }
    }
    
    func display() {
        print("Username: \(username)")
        print("Followers: \(followers)")
    }
}

class Admin: Member {
    let channelName = "testchannel"
    var description = "placeholder text"
    
    func addDescription(desc: String) {
        self.description = desc
    }
    
    override func display() {
        super.display()
        print("Channel Name: \(channelName)")
        print("Description: \(description)")
    }
}

let admin = Admin()
admin.addDescription(desc: "testchannel description")
admin.display()
