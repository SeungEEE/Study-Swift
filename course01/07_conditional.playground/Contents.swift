/* 조건문 */

import Swift

let someInteger = 100

//MARK: - if-else

//if condition {
//      statements
//} else if condition {
//      statements
//} else {
//      statements
//}

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입 들어와야 함
// someInteger -> Bool 타입 아닌 Int 타입 -> 컴파일 오류 발생
//if someInteger { }

//MARK: - switch

//switch value {
//case pattern:
//      code
//default:
//      code
//}

// 범위 연산자 활용
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입 사용 가능
switch "seung" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "seung":
    print("seung!!")
default:
    print("unknown")
} // seung!!
