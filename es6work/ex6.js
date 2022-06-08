let arr1 = [2,3,4];
let arr2 = [6,7];
let arr3 = [11,22,...arr1,12,...arr2];
console.log(arr3.length); //8
console.dir(arr3); // [11, 22, 2, 3, 4, 12, 6, 7]

let arr4=[...[100,200],...arr2];
console.log(arr4); //100 200 6 7

function fsum(arr){
    console.log("합계=");
    let sum = 0;
    //방법1
    // for(i=0;i<arr.length;i++){
    //     sum += arr[i];
    // }
    // console.log("합계=" + sum);

    //방법2
    for(let a in arr){ //a는 인덱스 
        sum += arr[a];
    }
    console.log("합계=" + sum);
}

fsum(arr3);

function func3(a,b,c,d,e){
    console.log(a,b,c,d,e);
}

//호출해보세요, arr3을 인자로 보내기
func3(arr3); 
func3(...arr3);