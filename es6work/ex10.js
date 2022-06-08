//Number 객체
let a = 12;
let b = 23.0;
let c = 12.6;
console.log(a+"는 정수인가?"+Number.isInteger(a)); //true
console.log(b+"는 정수인가?"+Number.isInteger(b)); //true
console.log(c+"는 정수인가?"+Number.isInteger(c)); //false

let a1 = "NaN";
let b1 = NaN;
let c1 = "안녕";
let d1 = 12;

//es5의 isNaN
console.log("es5 isNaN"); // 숫자가 아닌경우 모두 true
console.log(a1+" 은 NaN인가?" + isNaN(a1)); //true
console.log(b1+" 은 NaN인가?" + isNaN(b1)); //true
console.log(c1+" 은 NaN인가?" + isNaN(c1)); //true
console.log(d1+" 은 NaN인가?" + isNaN(d1)); //false

//es6의 isNaN
console.log("es6 isNaN"); //정말 NaN인 경우에만 true 
console.log(a1+" 은 NaN인가?" + Number.isNaN(a1)); //false
console.log(b1+" 은 NaN인가?" + Number.isNaN(b1)); //true
console.log(c1+" 은 NaN인가?" + Number.isNaN(c1)); //false
console.log(d1+" 은 NaN인가?" + Number.isNaN(d1)); //false

console.log("반복함수 repeat");
console.log('ㅋ'.repeat(200)); //반복
console.log('='.repeat(50)); //반복
console.log('*'.repeat(30)); //반복

var x = "20";
var y = "3";
console.log(x+y); //문자그대로 더해짐 => 203
console.log(Number(x)+Number(y)); //숫자로 전환 => 23


