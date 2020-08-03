# ArrayAndMatrix
## Code from PlauGround:

var a : Array = [1, 2, 3, 4]<br/>
print("Original array: \(a)")<br/>
reverseArray(&a)<br/>
print("Reversed array: \(a)")<br/>

func reverseArray(_ array: inout[Int]) {<br/>
    let count = array.count<br/>
    for i in 0..<count/2 {<br/>
       (array[i],array[count - i - 1])  = (array[count - i - 1],array[i])<br/>
    }<br/>
}

let N = 4<br/>
let M = 5

var matrix = RandomMatrix(rows: N, columns: M)<br/>
print("\nOriginal Matrix:")<br/>
matrix.show()<br/>
matrix.changeOddToEvenRows()<br/>
print("Changed Matrix:")<br/>
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




## OUTPUT:
Original array: [1, 2, 3, 4]<br/>
Reversed array: [4, 3, 2, 1]<br/>

Original Matrix:<br/>
[38, 62, 69, 33, 22]<br/>
[55, 68, 94, 54, 51]<br/>
[59, 24, 46, 44, 18]<br/>
[45, 96, 53, 18, 38]<br/>
Changed Matrix:<br/>
[55, 68, 94, 54, 51]<br/>
[38, 62, 69, 33, 22]<br/>
[45, 96, 53, 18, 38]<br/>
[59, 24, 46, 44, 18]
