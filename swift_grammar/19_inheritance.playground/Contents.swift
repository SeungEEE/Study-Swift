/* 상속 */

import Swift

// 스위프트의 상속은 클래스, 프로토콜 등에서 가능
// 열거형, 구조체는 상속 불가능
// 스위프트는 다중상속 지원 X
// 클래스의 상속

//MARK: - 클래스의 상속과 재정의

//class 이름: 상속받을 클래스 이름 {
//    /* 구현부 */
//}

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    // final 키워드 사용하여 재정의 방지 가능
    final func sayHello() {
        print("hello")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // 재정의 가능한 class 메서드라도 final 키워드 사용하면 재정 불가
    // 메서드 앞의 'static'과 'final class'는 똑같은 역할
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Student: Person {
//    var name: String = ""
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    // static 사용 재정의 불가
//    override static func typeMethod() { }
    
    // final 사용 재정의 불가
//    override func sayHello() { }
//    override class func finalClassMethod() { }
}

let seung: Person = Person()
let jin: Student = Student()

seung.name = "seung"
jin.name = "jin"
jin.major = "Swift"

seung.selfIntroduce() // 저는 seung입니다

jin.selfIntroduce() // 저는 jin이고, 전공은 Swift입니다

Person.classMethod() // type method - class

Person.typeMethod() // type method - staic

Person.finalClassMethod() // type method - final class


Student.classMethod() // overriden type method - class

Student.typeMethod() // type method - static

Student.finalClassMethod() // type method - final class


