import Foundation

//String Literals(문자열 리터럴)
//문자열 리터럴은 큰따옴표("")를 사용하여 상수 또는 변수의 초기 값으로 사용할 수 있다
let someString = "이런 문자열"

//Multiline String Literals(멀티라인 문자열 리터럴)
//여러줄의 문자열을 사용하려면 큰따옴표3개를 사용하여 선언할 수 있다
let multiline = """
처음 큰따옴표가 끝나는 지점부터 마지막 큰따옴표까지 전부를 포함한다 \
백슬래시 명령어가 없으면 줄바꿈이 발생하지 않기 때문에 줄바꿈을 사용하고 싶으면 백슬래시를 사용하면 된다
"""

let lineBreaks = """

여러 줄을 쓸 때는 시작 줄과 마지막 줄을 빈 줄로
작성하는 것이 좋다

"""
//Special Characters in String Literals(문자열 리터럴의 특수문자)
//문자열을 다음과 같은 특수문자들을 포함할 수 있다
// \0-널문자 , \\-백슬래시. \t-탭키를 누른 효과 , \n-줄바꿈 ,\r-커서위치 변경, \"-큰따옴표 \'-작은따옴표
// 유니코드도 다음처럼 사용할 수 있다 괄호안에는 1+8자리 16진수를 사용한다
let dollarSign = "\u{24}" // "$"
let blackHeart = "\u{2665}" // "♥"
let sparklineHeart = "\u{1F496}" // "💖"

//위에 """ """ 를 사용하면 " 는 그냥 사용가능하고 """를 문자열에 사용하고 싶으면 \"를 3번 사용해서 나타내면 된다

//Extended String Delimiters(확장된 문자열 구분 기호)
//#을 큰따옴표 앞에 사용하면 모든 문자를 문자열로 사용할 수 있다
let usingAll = #"""
모든 문자를 문자열로 사용 \n ,\u{2665},","""
"""#
// = 모든 문자를 문자열로 사용 \n ,\u{2665},",""" 으로 출력된다

//Initializing an Empty String(빈 문자열 초기화)
//다음처럼 빈 문자열을 초기화할 수 있다
var emptyString = ""
var anotherEmptyString = String()

//String Mutability
var variableString = "variable"
variableString += "String"  //변수로 선언한 문자열을 수정 가능

let constantString = "constant"
//constantString += "String" 상수로 선언한 문자열은 수정 불가능

//Strings Are Value Types(문자열은 Value타입이다)
//string값을 함수나 메서드에 전달되거나 상수나 변수에 할당될 때 기존 문자열이 아닌 새로운 복사본이 생성된다
//복사된 문자열은 정확한 값을 소유하고 직접 수정하지 않으면 수정되지 않는다
//화면 뒤에서 컴파일러는 문자열 사용을 최적화하여 절대적으로 필요한 경우에만 복사가 이루어진다

//Working with Characters(characters로 작업하기)
//for-in문을 사용하여 문자열의 개별 문자를 사용할 수 있다
for character in "개별문자열" {
    print(character) //문자가 한글자씩 출력된다
}

//타입 지정을 통해서 character타입으로 지정할 수 있다
let characterType:Character = "a"

let characterArray:[Character] = ["해","리","포","터"]
let characterToString = String(characterArray)
print(characterToString) // 해리포터로 출력

//Concatenating Strings and Characters(string과 character 연결하기)
//string타입은 + 연산자를 통해 연결할 수 있다
let string1 = "해리"
let string2 = "포터"
var combine = string1 + string2 //해리포터로 출력

// += 연산자도 사용할 수 있다
var string3 = "와 비밀의 방"
combine += string3 //해리포터와 비밀의 방으로 출력

//string타입에 append()메서드를 사용해 character타입을 추가할 수 있다
let dot = "."
combine.append(dot) //해리포터와 비밀의 방.으로 출력

//만약 여러줄의 문자열을 사용할 때 마지막 문자열이 끝나고 줄바꿈을 하지 않으면 문자열을 연결할 때 줄바꿈이 일어나지 않는다
let badStart = """
one
two
"""
let goodStart = """
one
two

"""
let end = """
three
"""
print(badStart + end)
//one
//twothree 로 출력됨
print(goodStart + end)
//one
//two
//three 로 출력됨

//String Interpolation(문자열 보간)
//\()를 사용하여 문자열 안에 값을 포함하는 상수,변수,리터럴 및 표현식을 나타낼 수 있다
let mutiplier = 3
let message = "\(mutiplier) times 2.5 is \(Double(mutiplier) * 2.5)" // 3 times 2.5 is 7.5 로 출력

//Unicode(유니코드)
//유니코드는 다른 쓰기 시스템에서 텍스트를 인코딩,표현 및 처리하는 국제 표준이다 거의 모든 언어의 거의 모든 문자를 표현할 수 있다
//텍스트 파일이나 웹 페이지와 같은 외부 소스에서 해당 문자를 읽고 쓸 수 있다 Swift는 완전히 유니코드를 준수한다

//Unicode Scalar Values(유니코드 스칼라 값)
//스위프트의 네이티브 문자열 유형은 유니코드 스칼라 값으로 만들어졌다
//유니코드 스칼라 값은 고유한 21비트 숫자이고 모든 값이 문자에 할당되는 것은 아니고 UTF-16인코딩에 예약되어 있다


//Extended Grapheme Clusters(확장된 Grapheme Cluster)
//스위프트 문자 유형의 모든 인스턴스는 단일 확장된 grapheme cluster를 나타낸다
//확장된 grapheme cluster는 사람이 읽을 수 있는 단일 문자를 생성하는 하나 이상의 유니코드 스칼라의 시퀸스이다

//위 방법은 많은 복잡한 스크립트 문자를 단일 문자 값으로 표현하는 유연한 방법이다
//예를 들어 한글은 구성된 글자나 분해된 순서로 표현될 수 있다
//스위프트에서는 단일 문자 값으로 표현된다
let precomposed:Character = "\u{D55C}" //한
let decomposed:Character = "\u{1112}\u{1161}\u{11AB}" //ㅎ,ㅏ,ㄴ
//둘 다 한으로 출력


//Counting Characters(케릭터 계산하기)
//문자열의 문자 값의 수를 찾으려면 count프로퍼티를 사용하면 된다

let countString = "가나다라마바사아자차카타파하"
print(countString.count) //위 문자열의 수를 알려준다

//Accessing and Modifying a String(문자열에 접근하고 수정하기)
//다양한 메서드와 프로퍼티를 사용하여 문자열에 접근하고 수정할 수 있다

//String Indices(string 인덱스들)
//각 문자열들은 각 문자의 위치에 해당하는 관련 인덱스 유형인 string.index가 있다
//다른 문자들은 각각 저장될 때 다른 양의 메모리를 요구할 수 있으므로 특정 위치에 있는 문자를 결정하려면 문자열의 시작이나 끝에서 각 유니코드 스칼라를 반복해야 해서
//스위프트는 문자열을 정수값으로 인덱싱할 수 없다

let hello = "안녕하세요!"
//startIndex프로퍼티는 문자열의 첫번째 인덱스를 리턴해준다
print(hello[hello.startIndex]) //안 출력
//endIndex프로퍼티는 문자열의 마지막 문자 뒤의 인덱스를 리턴해준다
//index(before:)메서드는 입력된 값의 이전 인덱스를 리턴해준다
print(hello[hello.index(before: hello.endIndex)]) //! 출력
//index(before:)메서드는 입력된 값의 다음 인덱스를 리턴해준다
print(hello[hello.index(after: hello.startIndex)]) //녕 출력
//index(_:offsetBy:)입력된 인덱스의 offsetBy에 입력된 수 만큼 이동한 인덱스를 리턴해준다
print(hello[hello.index(hello.startIndex, offsetBy: 3)]) //세 출력

//문자열의 인덱스를 넘어가는 값을 출력하면 에러가 난다
//print(hello[hello.endIndex]) = endIndex는 마지막 값 다음 인덱스이고 이는 문자열 인덱스 범위를 넘어가기 때문에 에러가 발생한다

//indices프로퍼티를 사용해 문자열의 모든 인덱스를 출력할 수 있다
for index in hello.indices {
    print(hello[index])    // 각각의 문자열을 하나씩 출력한다
}
