import UIKit

//MARK: - 높이 구하기
var test = [10, 4, 15, 26, 3, 7, 7, 3, 0, 26]
var testarray = test.sorted { first, second in
    first > second
}
test.forEach { num in
    if num != 0{
        let testNum = Double(num) / Double(testarray.first!)
        let height = 200 * testNum
    print(round(height))
    }
}

//MARK: - 배열중복제거
func removeDuplication(array:[Date]) -> [Date] {
    let set = Set(array)
    let Array = Array(set)
    let sortedArray = Array.sorted {first , second in
        return first < second
    }
    return sortedArray
}


