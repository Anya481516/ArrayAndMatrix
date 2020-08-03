import Foundation

// 1
var a : Array = [1, 2, 3, 4]
print("Original array: \(a)")
reverseArray(&a)
print("Reversed array: \(a)")

func reverseArray(_ array: inout[Int]) {
    let count = array.count
    for i in 0..<count/2 {
       (array[i],array[count - i - 1])  = (array[count - i - 1],array[i])
    }
}
