let name = "Kanav Goyal";
print(name);

// basic data types
let a : String = "hello, world";
let b : Int = 123;
let c : Float = 12.345;
let d : Double = 12.3456789;
let e : Bool = true;

// randomisation
let randomNumberIntInc = Int.random(in: 1...3);
let randomNumberIntExc = Int.random(in: 1..<3);
let randomNumberFloatInc = Float.random(in: 1...3);
let randomNumberFloatExc = Float.random(in: 1..<3);
let randomBool = Bool.random()
print(randomNumberIntInc);
print(randomNumberIntExc);
print(randomNumberFloatInc);
print(randomNumberFloatExc);
print(randomBool);
