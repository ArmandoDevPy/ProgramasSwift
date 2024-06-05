let arr: [[Int]] = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

var suma1 = 0
var suma2 = 0
var determinante = 0
var contador = 0

for i in 0..<arr.count {
    for j in 0..<arr.count{
        if i == j {
            suma1 += arr[i][j]
        }
    }
}

for i in (0...arr.count - 1).reversed(){
  print(i)
    for j in 0..<arr.count{

        if j == contador {
            suma2 += arr[i][j]
        }

    }
    contador+=1
}

determinante = abs(suma1 - suma2)
print("-----------------")
print(determinante)
