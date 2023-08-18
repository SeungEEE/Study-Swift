/* asser / guard */

import Swift

// 애플리케이션이 동작 도중에 생성하는 다양한 결과값을
// 동적으로 확인하고 안전하게 처리할 수 있도록
// 확인하고 빠르게 처리할 수 있음

//MARK: - Assertion
// assert(_:_:file:line:) 함수 사용
// assert 함수는 디버깅 모드에서만 동작
// 배포하는 애플리케이션에서는 제외
// 주로 디버깅 중 조건의 검증을 위하여 사용

var someInt: Int = 0

assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) // 동작 중지,  검증 실패
//assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 21

func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패

//MARK: - Early Exit
// guard 사용하여 잘못된 값의 전단ㄹ 시 특정 실행구문 빠르게 종료
// 디버깅 모드 뿐 아니라 어떤 조건에서도 동작
// guard의 else 블럭 내부에 특정 코드블럭을 종료하는 지시어(return, break 등)가 있어야 함
// 타입 캐스팅, 옵셔널과도 자주 사용
// 그 외 단순 조건 판단 후 빠르게 종료할 때도 용이함

func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
          unwrappedAge < 130,
          unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    guard unwrappedAge < 100 else {
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFuction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFuction(info: ["name": "jenny", "age": "10"])
someFuction(info: ["name": "mike"])
someFuction(info: ["name": "seung", "age": 10])  // seung: 10
