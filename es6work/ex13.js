//컬렉션 set, map
let set = new Set("안녕하십니까"); //중복된 문자는 걸러냄
console.log(set);

//set에 추가
set.add("!");
console.log(set);
console.log(set.has("안")); //x를 포함하고 있으면 true
console.log(set.has("!")); //!를 포함하고 있으면 true
console.log("길이 : " + set.size); //길이
console.log(...set); //펼침연산자
set.delete("a"); //a 삭제
console.log(...set); //펼침연산자
set.clear(); //전체삭제
console.log(set.size); //갯수 0

console.log("여기부터는 Map");
let map = new Map();
let a = {n:1}; //json타입
map.set(a,"A"); //key가 json타입 가능
map.set("2",9);
map.set("2",11); //같은 key 값일 경우 덮어쓴다
console.log(map);
console.log(...map);
console.log(map.has("2")); //2라는 key값이 있는가 

map.delete("2"); //key가 2인 데이터 삭제 
console.log(map);

map.clear(); //전체삭제 
console.log(map);