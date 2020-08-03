# ArrayAndMatrix
## Code from PlauGround:

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

let N = 4
let M = 5

var matrix = RandomMatrix(rows: N, columns: M)
print("\nOriginal Matrix:")
matrix.show()
matrix.changeOddToEvenRows()
print("Changed Matrix:")
matrix.show()

class RandomMatrix {
    
    private var matrix : Array<Array<Int>>
    
    init(rows: Int, columns: Int) {
        matrix = Array(repeating: Array(repeating: Int(), count: columns), count: rows)
        for i in 0..<rows {
            for j in 0..<columns {
                matrix[i][j] = Int.random(in: 10..<100)
            }
        }
    }
    
    func show() {
        for i in 0..<matrix.count {
            print(matrix[i])
        }
    }
    
    func changeOddToEvenRows() {
        let rows = matrix.count
        for i in stride(from: 0, to: rows - 1, by: 2) {
            (matrix[i],matrix[i + 1])  = (matrix[ i + 1],matrix[i])
        }
    }
}




##OUTPUT:
Original array: [1, 2, 3, 4]
Reversed array: [4, 3, 2, 1]

Original Matrix:
[38, 62, 69, 33, 22]
[55, 68, 94, 54, 51]
[59, 24, 46, 44, 18]
[45, 96, 53, 18, 38]
Changed Matrix:
[55, 68, 94, 54, 51]
[38, 62, 69, 33, 22]
[45, 96, 53, 18, 38]
[59, 24, 46, 44, 18]
