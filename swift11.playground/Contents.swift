func factorial(n : Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    return n * factorial(n: n-1)
}

let n = 6
print("\(n)! = \(factorial(n: n))")
