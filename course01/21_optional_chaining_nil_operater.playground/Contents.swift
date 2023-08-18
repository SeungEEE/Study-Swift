/* 옵셔널 체이닝 */

import Swift

// 옵셔널 체이닝 -> 옵셔널 요소 내부의 프로퍼티
// 옵셔널이 연속적으로 연결되는 경우 유용하게 사용

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumer: String
    var guardian: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumer = ho
    }
}

let seung: Person? = Person(name: "seung")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널

// 우리집의 경비원 직업이 궁금하다면..?

// 옵셔널 체이닝 이용하지 않으면...
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let guardian = home.guardian {
                if let guardJob = guardian.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: seung)

// 옵셔널 체이닝 이용
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guardian?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: seung) // 우리집 경비원은 직업이 없어요

seung?.home?.guardian?.job  //nil

seung?.home = apart

seung?.home // optional(Apratment)
seung?.home?.guardian // nil

seung?.home?.guardian = superman

seung?.home?.guardian // Optional(person)

seung?.home?.guardian?.name // superman
seung?.home?.guardian?.job // nil

seung?.home?.guardian?.job = "경비원"

// nil 병합 연산자

2
