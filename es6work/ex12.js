let irum = "강호동";
let birth = 1979;
let food = '삼겹살';
let currYear = new Date().getFullYear();

let result = `이름 : ${irum}
태어난 년도 : ${birth}
나 이 : ${currYear-birth} 
좋아하는 음식 : ${food}`;

console.log(result);
