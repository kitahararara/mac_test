struct Square {
    var sideLength = 3
    var area:Int {
        let result = sideLength * sideLength
        return result
    }
}
let square = Square()
//print(square.area)

struct Rect {
    var vLength = 3
    var hLength = 5
    var area:Int {
        vLength * hLength
    }
}
let rect = Rect()
print(rect.area)
