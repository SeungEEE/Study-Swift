/* 구조체 */

import Swift

//MARK: - 정의
//struct 이름 {
//      /* 구현부 */
//}

//MARK: 프로퍼티 및 메서드

struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

//MARK: 구조체 사용

// 가변 인스턴스
var mutable: Sample = Sample()

//mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

//mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

//mutable.typeProperty = 400
//mutable.typeMethod()


//MARK: - 학생 구조체

struct Student {
    var name: String = "unknown"
    var 'class': String = "Swift"
    
    static func selfIntroduce() {
        print("학생 타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생 타입입니다

var seung: Student = Student()
seung.name = "seung"
seung.class = "스위프트"
seung.selfIntroduce()  // 저는 스위프트반 seung입니다

let jin: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
//jin.name = "jin" // 오류 발생
jin.selfIntroduce()  // 저는 Swift반 unknown입니다
