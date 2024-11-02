func calculator(n1: Int, n2: Int, operation: ((Int, Int) -> Int)) -> Int {
    return operation(n1, n2)
}

func add(n1: Int, n2: Int) -> Int {
    return n1+n2
}
func subtract(n1: Int, n2: Int) -> Int {
    return n1-n2
}

let r1 = calculator(n1: 100, n2: 90, operation: add)
let r2 = calculator(n1: 80, n2: 70, operation: subtract)
print("100 + 90 = \(r1)")
print("80 + 70  = \(r2)")

let r3 = calculator(n1: 60, n2: 50, operation: {(n1: Int, n2: Int) -> Int in
    return n1*n2
})
let r4 = calculator(n1: 40, n2: 30, operation: {(n1, n2) in
    return n1/n2
})
let r5 = calculator(n1: 20, n2: 10, operation: { ($0 % $1) })
print("60 + 50  = \(r3)")
print("40 + 30  = \(r4)")
print("20 + 10  = \(r5)")


let array = [0, 1, 2, 3, 4]
print("array before: \(array)")
print("array after:  \(array.map({$0 + 1}))")

