/* 옵셔널 추출 */
import Swift

func printName(_name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 오류 발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용 가능
// 상수 사용 범위 벗어났기 때문에 오류 발생
//printName(name)

// ,를 이용해 한 번에 여러 옵셔널 바인딩 가능
// 모든 옵셔널에 값이 있을 때만 동작
myName = "seung"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행X
yourName = "jin"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// seung and jin

var myName: String? = seung
var yourName: String! = nil

printName(myName!) // seung
myName = nil

//print(myName!)
// 강제 추출 시 값 x -> 오류 발생
yourName = nil

//print(yourName)
// nil 값 전달 -> 오류 발생
