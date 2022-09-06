import Foundation

//Collection Types(컬렉션 타입)
//swift는 arrys,sets,dictionaries 이 3가지 컬렉션 타입의 배열을 사용할 수 있다
//array는 값이 정렬된 배열이고 set은 값이 정렬되지 않은 배열 dictionary는 키-값이 연결된 배열이다
//이 배열들은 저장할 수 있는 값의 타입들이 항상 명확해야한다 이 말은 지정된 타입이 아닌 값은 배열에 저장할 수 없다는 것을 의미한다

//Mutablity of collections(컬렉션의 변동성)
//변수로 선언한 배열들은 mutable한 상태이기 때문에 항목을 추가,제거 또는 변경 가능하다
//상수로 선언된 배열들은 불변이며 변경이 불가능하다
//만약 배열을 값을 변경할 필요가 없는 배열들을 선언할 때는 상수로 선언하는 것이 swift가 타입 추론하기 쉬워지고 컴파일러의 성능을 최적화할 수 있다

//Arrays(Array 배열)
//동일한 타입을 저장하고 같은 값을 여러번 저장할 수 있다

//Array Type Shorthand Syntax
//array배열의 타입은 Array<Element>,[Element]로 지정하고 Element에는 저장값의 타입을 적어야 한다

//Creating an Empty Array(빈 배열 만들기)
//[]로 빈 배열을 만들 수 있다
var arrayInt:[Double] = [] // Int타입이 저장가능한 배열이다
arrayInt.append(1.0) // append()메서드를 이용해 값을 추가할 수 있다
arrayInt = [] //이미 타입이 지정된 배열은 타입을 또 지정하지 않아도 된다 위에 추가된 값이 지워지고 빈 배열이 됨

//Creationg an Array with a Default Value(기본값으로 배열 만들기)
//다음처럼 array배열을 만들 수 있다
var threeDoubles = Array(repeating: 0.0, count: 3) //0.0이 3개인 배열 생성

//Creating an Array by Adding Two Arrays Together(배열 합치기)
// + 연산자를 사용해 타입이 같은 2개의 배열을 합쳐서 하나의 배열로 만들 수 있다
var plusArray = arrayInt + threeDoubles //위에 2개의 배열이 합쳐진 하나의 배열이 생성됨

//Creating an Array with an Array Literal(배열 리터럴로 배열 만들기)
// [value 1, value 2]로 값이 추가된 배열을 만들 수 있다
var stringArray:[String] = ["아이언맨","토르"] // 다음처럼 배열을 만들 수 있다
var stringArray2 = ["캡틴 아메리카","호크아이"] // 만약 배열 리터럴의 값들이 동일한 타입이면 알아서 타입을 추론한다

//Accessing and Modifying an Array(배열에 접근하고 수정하기)
//다양한 메소드와 프로퍼티 또는 subscript를 사용해 배열을 수정할 수 있다

stringArray.count //count프로퍼티를 사용해 배열의 개수를 알 수 있다 // 2 출력
stringArray.isEmpty //isEmpty프로퍼티는 배열의 개수가 0 이면 true 아니면 false를 반환한다 //false 출력
stringArray.append("블랙위도우") //append()메서드는 입력값을 배열에 추가해준다 - 타입이 다르면 에러
stringArray += ["헐크"] // += 연산자를 사용헤 배열을 추가할 수 있다 - 역시 타입이 다르면 에러
stringArray[0] // subscript syntax를 사용하여 입력된 인덱스의 값을 알 수 있다 - 값이 인덱스를 벗어나면 에러
stringArray[2...3] = ["캡틴 아메리카","호크아이"] // subscript syntax를 사용하여 입력된 위치의 값을 변경할 수 있다 - 값이 인덱스를 벗어나면 에러
stringArray.insert("닉 퓨리", at: 4) // insert(_:at:)메서드를 사용하여 원하는 위치에 값을 추가할 수 있다 - 값이 인덱스를 벗어나면 에러

stringArray.remove(at: 4) // remove(at:)메서드를 이용해 원하는 위치에 값을 제거할 수 있다 - 값이 인덱스를 벗어나면 에러
stringArray.removeLast() // removeLast()메서드를 이용해 배열의 마지막 값을 제거할 수 있다

//Iterating Over an Array(배열 반복하기)
//for-in 반복문을 이용해 배열의 값들을 출력할 수 있다
for item in stringArray {
    print(item)           //stringArray의 값들이 출력됨
}
//enumerated()메서드를 사용해 배열의 인덱스와 값을 알 수 있다
for (index,value) in stringArray.enumerated() {
    print("\(index) = \(value)")       //배열의 인덱스와 값이 출력된다
}

//Sets(set 배열)
//array와 똑같은 배열이지만 순서가 랜덤하고 중복된 값을 저장할 수 없다

//Hash Values for Set Types
//set 배열은 hashable한 값들만 저장이 가능하다 swift의 기본 타입들인 String,Int,Double,Bool 타입은 모두 hashable을 준수한다
//hashable을 준수하는 커스텀 타입을 만들어서 사용할 수 있다

//Set Type syntax
//Set<Element>로 선언하며 Element는 값의 타입이다

//Creating and initializing an Empty Set(빈 set배열 만들기)
var emptySetArray = Set<Character>() //이렇게 만들 수 있다
emptySetArray.insert("a") //insert()메서드로 값을 추가할 수 있다
emptySetArray = [] // []로 빈배열로 만들 수 있다

//Creating a Set with an Array Literal(배열 리터럴로 set 배열 만들기)
var setArray: Set<String> = ["케인","손","클루셉"] //다음처럼 만들 수 있다
var setArray2 : Set = ["벤탕쿠르","호이비에르"] //다음처럼 값의 타입을 생략할 수 있다

//Accessing and Modifying a Set(set배열 수정하기)
setArray.count //count프로퍼티로 개수를 알 수 있다
setArray.isEmpty //isEmpty프로퍼티로 값이 0개이면 true 그 외는 false를 출력한다

if setArray.remove("클루셉") != nil{
    print("있음")              //remove(_:)메서드로 입력받은 값이 존재하면 지우고 없으면 nil을 반환해준다
}else{
    print("없음")
}
setArray2.removeAll() //removeAll()메서드로 모든 값을 지울 수 있다
setArray.contains("케인") //contains()메서드로 입력된 값이 배열에 존재하는지 확인 가능

//Iterating Over a Set
for item in setArray {
    print(item)       //for in 반북문을 사용하여 값들을 알 수 있다
}

for item in setArray.sorted() {
    print(item)       //set배열은 순서가 없기때문에 sorted()메서드를 사용하여 정렬할 수 있다 sorted(by:)메서드에 < 연산자를 넣어 원하는 정렬도 가능하다
}

//Performing Set Operations
//두 set를 결합하거나, 공통 값을 결정하거나, 동일한 값을 모두 포합하는지,일부 또는 전혀 포함하지 않는지를 확인하는 것이 가능하다

//Fundamental Set Operations(기본적인 배열 작업)

let setA:Set = [1,3,5,7,9]
let setB:Set = [2,4,6,8,10]
let setC:Set = [2,3,5,7]

setA.union(setB).sorted() //union(_:)메서드는 두 set배열을 합친 배열을 출력한다
setA.intersection(setB).sorted() //intersection(_:)메서드는 두 set배열의 교집합을 출력한다
setA.subtracting(setC).sorted() //subtracting(_:)매서드는 입력받은 배열의 값을 뺀 나머지 값만 출력한다
setA.symmetricDifference(setC).sorted()//symmetricDifferenc(_:)매서드는 중복되는 값을 뺀 나머지 값을 출력한다

//Set Membership and Equality

setA == setB // == 연산자를 사용해 두 배열이 같은지 비교할 수 있다
setA.isSubset(of: setB) // isSubset(of:)메서드는 입력받은 배열에 setA가 포함된 상태인지 확인해준다
setA.isSuperset(of: setB) //isSuperset(of:)메서드는 입력받은 배열이 setA에 포함된 상태인지 알려준다
setA.isStrictSubset(of: setB) // isStrictSubset(of:)메서드는 입력받은 배열에 setA가 포함된 상태이고 setA 값이 아닌 다른 값이 하나이상 존재할때 true를 반환한다
setA.isStrictSuperset(of: setB) //isStrictSuperset(of:)메서드는 입력받은 배열이 setA에 포함된 상태이고 setA에 입력받은 배열의 값이 아닌 다른 값이 하나이상 존재할때 true를 반환한다
setA.isDisjoint(with: setB) //공통된 값이 없으면 true 반대면 false

//Dictionary

//Dictionary Type Shorthand Syntax
//Dictionary<Key, Value>,[Key: Value]와 같은 방법으로 사용가능

//Creating an Empty Dictionary(빈 딕셔너리 배열 만들기)
var dictionaryArray:[Int: String] = [:] //다음처럼 빈 배열 생성가능
dictionaryArray[16] = "sixteen" // KEY값이 16이고 value가 "sixteen"
dictionaryArray = [:] // 빈 배열

//Creating a Dictionary with a Dictionary Litera
//배열 리터럴을 사용하여 배열을 만들 수 있고 타입이 일정해야 한다
var airports: [String:String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//위처럼 값을 넣을수 있다
var airports2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//위처럼 타입이 일정한 값들을 넣어주면 알아서 타입추론을 한다

//Accessing and Modifying a Dictionary(배열에 접근하고 수정하기)
airports.count // .count프로퍼티로 개수 확인가능
airports.isEmpty // .isEmpty프로퍼티로 빈 배열인지 확인가능
airports["LHR"] = "London Heathrow" //새로운 key와 value값 추가가능

//.updateValue(_:forKey:)메서드는 입력한 Key값이 존재하면 입력한 Value값을 넣어주고 이전 Value값을 반환해준다
//입력한 Key값이 새로운 Key값 이면 배열에 추가하고 nil을 반환
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("이전 값 =\(oldValue),배열 = \(airports)")
    //기존에 있던 값, 배열을 업데이트하고 이전 값을 반환
}else {
    print(airports)
    //기존에 없던 값, 배열에 새로 추가해 줌
}

//다음처럼 특정 KEY값을 검색할 수 있다
if let airportName = airports["DUB"] {
    print(airportName) //존재하는 KEY값이면 Value값을 반환해준다
}else{
    //존재하지 않으면 nil을 반환해준다
}

airports["APL"] = "Apple International" //새로운 값을 추가해준다
airports["APL"] = nil //nil값을 넣어주면 배열에서 지워진다

//.removeValue(forKey:)메서드는 입력받은 KEY값을 확인하고 존재하면 지우고 아니면 nil을 반환한다
if let removedValue = airports.removeValue(forKey: "DUB") {
    print(removedValue) //KEY값이 존재하면 배열에서 지워주고 지워진 Value를 반환한다
}else{
    //KEY값이 없으면 nil 반환
}

//Iterating Over a Dictionary(배열 반복하기)

//다음처럼 배열을 반복할 수 있다
for airport in airports {
    print(airport.key) //배열의 KEY값 반복출력
    print(airport.value) //배열의 Value값 반복출력
}

let airportCode = [String](airports.keys) //배열의 KEY값을 따로 배열로 생성
let airportName = [String](airports.values) //배열의 Value값을 따로 배열로 생성

