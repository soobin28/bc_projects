pragma solidity ^0.5.7;

// 조건문 반복문 제어문 등
// 기본 문법은 기존 언어(자바, 자바스크립트 등) 별반 다르지 않다
// if, for, while, do-while, break, continue
// 삼항연산자
contract BasicIfForWhileTest
{
    function getCoffePrice (uint price) public pure returns (int)
    {
        // 입력값이 1500이상이면 1을 리턴
        // 1500보다 작으면 -1 리턴
        // 1500과 같으면 0리턴
        if(price == 1500){
            return 0;
        }else if(price >= 1500){
            return 1;
        }else{
            return -1;
        }
    }
    // 삼항연산자 => 상황이 2개, 값을 리턴 혹은 세팅 포인트 
    function threeCheck (uint x) public pure returns (uint result)
    {
        // 조건 ? 참일때 값 : 거짓 일 때 값
        result = x > 10 ? 1 : 0 ;
    }
    
    function forCheck (uint value) public pure returns (uint)
    {
        uint sum = 0;
        // 1부터 해당(인자)값 까지의 누적 합(총합)
        // value에 5를 넣으면, 1+2+3+4+5 => 15
        // 이런 부분 구현하시오
        for(uint i=1;i<=value;i++){
            sum+= i;
        }
        return sum;
    }
    // forCheck2를 구현, 누적합, 누적곱을 구해서 리턴
    function forCheck2 (uint value) public pure returns (uint sum, uint mul)
    {
        sum = 0;
        mul=1;
        for(uint i=1;i<=value;i++){
            sum+= i;
            mul *=i;
        }
    }
    // while
    function whileCheck (uint value) public pure returns (uint, uint)
    {
        uint n =0;
        uint n2 = 0;
        uint i =0;
        // 0~ 무한대
        while( i<value){
            n += 1;
            if(i>10){
                break;
            }
            i++;
        }
        // 1~ 무한대
        i =0;
        do{
            i++;
            if(i%2==0){
                continue;
            }if(i>10){
                break;
            }
            n2 +=1;
        }while(i<value);
        return (n,n2);
    }
}
