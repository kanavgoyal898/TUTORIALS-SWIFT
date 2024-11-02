// range operators
// closed range operator a...b
// half-open range operator a..<b
// one-sided range operator a... or ...b


let day  = Int.random(in: 1...7);
switch day {
case 1 : print("Monday");
case 2 : print("Tuesday");
case 3 : print("Wednesday");
case 4 : print("Thursday");
case 5 : print("Friday");
case 6 : print("Saturday");
case 7 : print("Sunday");
default : print("Error");
}
