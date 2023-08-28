import UIKit

/* 콘솔로그와 문자열 보간법 */

let age: Int = 20

"안녕하세요! 저는 \(age)살입니다"
// == "안녕하세요! 저는 20살입니다"

"안녕하세요! 저는 \(age + 5)살입니다"
// == "안녕하세요! 저는 25살 입니다"

print("안녕하세요! 저는 \(age + 5)살입니다")

print("\n####################\n")

class Person {
    var name: String = "seung"
    var age: Int = 10
}

let seung: Person = Person()

print(seung)

print("\n####################\n")

dump(seung) //자세하게 어떤 값들이 들어있는지 볼 수 있음
