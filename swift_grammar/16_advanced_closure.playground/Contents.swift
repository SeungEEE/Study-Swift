/* 클로저 고급 */

import Swift

/*
 후행 클로저
 반환타입 생략
 단축 인자이름
 암시적 반환 표현
 */

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int

//MARK: - 후행 클로저
// 클로저가 함수의 마지막 전달인자라면 마지막 매개변수 이름 생략한 후
// 함수 소괄호 외부에 클로저를 구현할 수 있음

result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) // 20

//MARK: - 반환타입 생략
// calculate 함수의 method 매개변수는
// Int 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에
// 굳이 클로저에서 반환타입을 명시해 주지 않아도 됨
// 대신 in 키워드 생략 X

result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result) // 20

// 후행 클로저와 함께 사용 가능
result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result) // 20

//MARK: - 단축 인자이름
// 클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자 이름을 활용할 수 있음
// 단축 인자이름은 클로저의 매개변수의 순서대로 $0, $1 ... 처럼 표현

result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result) // 20

// 후행 클로저와 함께 사용 가능
result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result) // 20

//MARK: - 암시적 반환 표현
// 클로저가 반환하는 값이 있따면
// 클로저의 마지막 줄 결과값은 암시적으로 반환값으로 취급

result = calculate(a: 10, b: 10) {
    $0 + $1
}

print(result) // 20

// 간결하게 한 줄로 표현
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20

// 축약하지 않은 클로저 문법과 축약 후의 문법 비교
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
