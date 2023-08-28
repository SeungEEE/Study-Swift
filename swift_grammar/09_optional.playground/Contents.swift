/* 옵셔널 */
import Swift

// someOptionalParm에 nil이 할당될 수 있음
func someFunction(someOptionalParam: Int?) {
    //...
}

// someOptionalParm에 nil이 할당될 수 없음
func someFunction(someOptionalParam: Int) {
    //...
}

someFunction(someOptionalParam: nil)
// someFunction(someParam: nil)

enum Optional<Wrapped>: ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}

let optionalValue: Optional<Int> = nil
let optionalValue: Int? = nil

// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case.none:
    print("This Optional variable is nil")
case.some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1


// Optional
var optionalValue: Int? = 100

switch optionalValue {
case.none:
    print("This Optional is nil")
case.some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용 불가 - 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValue = optionalValue + 1
