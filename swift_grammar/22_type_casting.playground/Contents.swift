/* 타입 캐스팅 */

import Swift

// 스위프트 타입 캐스팅 -> 인스턴스의 타입을 확인하는 용도
// 또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인하는 용도
// is, as 사용

// 타입 캐스팅을 위한 클래스 정의
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("MT를 갑니다")
    }
}

var seung: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()

//MARK: - 타입 확인
// is 사용하여 타입 확인

var result: Bool

result = seung is Person // true
result = seung is Student // false
result = seung is UniversityStudent // false

result = hana is Person // true
result = hana is Student // true
result = hana is UniversityStudent // false

result = jason is Person // true
result = jason is Student // true
result = jason is UniversityStudent // true

if seung is UniversityStudent {
    print("seung은 대학생입니다")
} else if seung is Student {
    print("seung은 학생입니다")
} else if seung is Student {
    print("seung은 사람입니다")
} // seung은 사람입니다

switch jason {
case is Person:
    print("jason은 사람입니다")
case is Student:
    print("jason은 학생입니다")
case is UniversityStudent:
    print("jason은 대학생입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 사람입니다

switch jason {
case is UniversityStudent:
    print("jason은 대학생입니다")
case is Student:
    print("jason은 학생입니다")
case is Person:
    print("jason은 사람입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 대학생입니다

//MARK: - 업 캐스팅
// as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입정보 전환해줌
// Any 혹은 AnyObject로도 타입정보를 변환할 수 있음
// 암시적으로 처리되므로 생략해도 무방

var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
//var jina: UniversityStudent = Person() as UniversityStudent // 오류 발생
var jina: Any = Person() // as Any 생략가능

//MARK: - 다운 캐스팅
// as? 또는 as! 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입정보 전환해줌

//MARK: 조건부 다운 캐스팅
// as?

var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil

//MARK: 강제 다운 캐스팅
// as!

var forcedCasted: Student

optionalCasted = mike as! UniversityStudent
//optionalCasted = jenny as! UniversityStudent // 런타임 오류
//optionalCasted = jina as! UniversityStudent // 런타임 오류
//optionalCasted = jina as! Student // 런타임 오류

// 활용
func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person)
// MT를 갑니다

doSomethingWithSwitch(someone: mike)
// MT를 갑니다

doSomethingWithSwitch(someone: jenny)
// 등교를 합니다


func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person)
// MT를 갑니다

doSomething(someone: mike)
// MT를 갑니다

doSomething(someone: jenny)
// 등교를 합니다

doSomething(someone: seung)
// 숨을 쉽니다
