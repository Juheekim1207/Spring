//함수 파라미터에 기본값이 가능하다

function func1(x,y=200,z=300){
    console.log(x,y,z);
}

func1(3,5,6); //3 5 6
func2(100); //100 200 300
func1(2,5); //2 5 300
func1(); //undefined 200 300

function func2(a,b){
    return a+b;
}

let r1 = func2(5,6);
console.log(r1);

let arr=[2,5,9];
let r2 = func2(arr[0],arr[1]); //2,5
console.log(r2); //7

//... : es6에서 추가된 기능, 펼침 연산자라고 부른다 
func1(...arr);
func2(arr[0],arr[1],arr[2]); //위와 같다

let r3 = func2(...arr); //앞의 2개 값이 넘어간다
console.log(r3); //7
