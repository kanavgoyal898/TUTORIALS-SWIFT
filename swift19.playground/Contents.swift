import Foundation

extension Double {
    func round(to places: Int) -> Double {
        var n = self
        let precisionNo = pow(10, Double(places))
        n = n * precisionNo
        n.round()
        n = n / precisionNo
        return n
    }
}

let pi = 3.141
print("pi: \(pi.round(to: 2))")
