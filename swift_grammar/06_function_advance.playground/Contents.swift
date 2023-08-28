/* 함수 */
import Swift

//MARK: - 매개변수 기본값
// 기본값을 갖는 매개변수 -> 매개변수 목록 중 뒤쪽에 위치하는 것이 좋음
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//      함수 구현부
//      return 반환값
//}

func greeting(friend: String, me: String = "seung") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수 생략 가능
greeting(friend: "jin") // Hello jin! I'm seung
greeting(friend: "john" , me: "eric") // Hello john! I'm eric

//MARK: - 전달인자 레이블

// 전달인자 레이블 -> 함수 호출할 때 매개변수 역할 좀 더 명확히 or 함수 사용자의 입장에서 표현하고자 할 때 사용
//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//      함수 구현부
//      return
//}

// 함수 내부에서 잔달인자를 사용할 때 매개변수 이름 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수 호출할 때 전달인자 레이블 사용해야 함
greeting(to: "jin", from: "seung") // Hello jin! I'm seung

//MARK: - 가변 매개변수
// 잔달 받은 값의 개수를 알기 어려울 때 사용
// 가변 매개변수는 함수당 하나만 가질 수 있음

//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//      함수 구현부
//      return
//}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "seung", friends: "jin", "john", "eric")) // Hello ["jin", "john", "eric"]! I'm seung!
print(sayHelloToFriends(me: "seung")) // Hello []! I'm seung!

/*
 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능
 */

//MARK: - 데이터 타입으로서의 함수

// Swift -> 함수의 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// Swift -> 함수 일급객체이므로 변수, 상수 등에 저장 가능, 매개변수를 통해 전달할 수 있음

//MARK: 함수의 타입표현
// 반환타입을 생략할 수 없음
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "seung") // Helllo eric! I'm seung

someFunction = greeting(friend: me:)
someFunction("eric", "seung") // Hello eric! I'm seung

// 타입이 다른 함수 할당 X
//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend: me:)) // Hello jenny! I'm mike
runAnother(function: someFunction) // Hello jenny! I'm mike
