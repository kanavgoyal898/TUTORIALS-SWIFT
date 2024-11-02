import Foundation

let friends: Array = ["Monica", "Phoebe", "Rachel", "Ross", "Joey", "Chandler"]
let thebigbangtheory: Set = ["Sheldon", "Leonard", "Penny", "Howard", "Rajesh", "Bernadette", "Amy"]
let howimetyourmother = ["Ted" : "Dad", "Marshall" : "Uncle", "Lily" : "Aunt", "Barney" : "Uncle", "Robin" : "Aunt"]

for charact in friends {
    print(charact)
}
print()

for charact in thebigbangtheory {
    print(charact)
}
print()

for charact in howimetyourmother {
    print("\(charact.key): \(charact.value)")
}
print()

var now = Date().timeIntervalSince1970
let nowPlusOne = now + 1

var count = 0
while (now < nowPlusOne) {
    now = Date().timeIntervalSince1970
    count = count + 1
}
print("While loop operations clock speed: \(count) operations per second.")
