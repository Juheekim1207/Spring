//es5에서도 객체 개념은 있었다
// function Person(name,age){
//     this.name = name;
//     this.age = age;
// }

// Person.prototype.printProfile = function(){
//     console.log("이름은 : " + this.name + "이고, 나이는 " + this.age + "세 입니다.");
// }

//es6의 class로 만들어 보세요 
class Person{
    //생성자
    constructor(name, age){
        this.name = name;
        this.age = age;
    }

    printProfile(){
        console.log("이름은 : " + this.name + "이고, 나이는 " + this.age + "세 입니다.");
    }

    static showTitle(){
        console.log("ES6의 정적함수");
    }
}

let p1 = new Person("이영자", 34);
p1.printProfile();

Person.showTitle(); //static 함수는 클래스 명으로 호출 

//prototype에 등록이 되었는지 확인
console.log("printProfile" in p1.__proto__);
console.log("printProfile" in Person.prototype);
