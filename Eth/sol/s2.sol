pragma solidity ^0.5.7;

// 변수의 저장위치
contract BasicVariable
{
    // 1. storage (스토리지) : 상태변수 (멤버변수), 함수내의 로컬변수
    // 2. memory (메모리) : 함수의 매개변수, 함수의 리턴값 -> 대부분 명시적 표현
    
    int a = 10; // 상태변수(멤버변수) -> storage (스토리지)
    
    function main() public view returns (int, int)
    {
        // b : 지역변수 : 함수내부에 위치한 변수
        int b = a;
        return (b, a);
    }
    
    // 생성자
    // 생성자의 인자값이 존재 할 경우, 배포 시 입력한다(테스트 관점)
    // 컨트렉의 이름을 사용하지 않고 (구 버전은 사용했음)
    // Contructor 키워드에 함수 형태로 구현한다.
    constructor (int _a) public
    {
        a = _a;
    }
}
