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
