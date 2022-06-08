//const : 상수
const PI = 3.141592;
let r = 3;

let area = r*r*PI;
console.log("반지름이 %d인 원의 넓이 : %f",r,area.toFixed(1)); //toFixed : 소수점이하 한자리까지 

//PI = 1.234; //값 변경시 오류 발생 

//const로 객체도 선언 가능
const pp = {
    "name" : "홍길동",
    "addr" : "서울 강남"
}

console.log("이름:" + pp.name);
console.log("주소:" + pp.addr);

//const가 객체타입일 경우 멤버는 변경가능
pp.name="이진";
pp.addr="LA";
console.log("이름:" + pp.name);
console.log("주소:" + pp.addr);

//pp={}; //객체값 자체 변경은 에러발생 