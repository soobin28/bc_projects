// 변수 
// java => int a = 10
// 타입 변수명; -> 컴파일언어
// js => var/ const/let a = 10
// ;는 생략가능
// js는 변수에 값이 세팅될 때 타입이 결정된다 => 타입추론
// javascript, python, kotlin, swift, scalar, .... 동일 => 인터프린터언어
var a ;
// a의 타입은 모르겠다.
var b = 10
// b는 정수타입이다!
console.log(typeof(a) , a)
console.log(typeof(b) , b)
// 현재 디렉토리 목록 확인
// $ ls <- 리눅스
// $ dir <- 윈도우
// 디렉토리를 변경
// $ cd 폴더
// 상위로 이동
// .. => 상위 디렉토리로, . => 현재디렉토리
// $ cd ..
// $ node b1.js
// -----------------------------
// js에서 변수를 선언하고 아무것도 세팅하지 않으면 타입 => undefined
// var, const, let
// 상수 : 값이 절대로 바뀌지 않는다 -> 통상 대문자 사용
const PI = 3.14
console.log(PI)
// PI = 3.144
// var -> let 대체하시오. 표준에서 지향하는 방향
let name = '점심'
console.log(name)