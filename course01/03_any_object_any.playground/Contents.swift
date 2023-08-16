/* Any, AnyObject, nil */
import UIKit

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

// MARK: - Any
var someAny: Any =. 00
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

// let someDouble: Double = someAny

// MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

// someAnyObject = 123.12

// MARK: - nil

// someAny = nil
// someAnyObject = nil

