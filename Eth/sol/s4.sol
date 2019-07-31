
pragma solidity ^0.5.7;

// 생성자
contract BasicConstructor
{
    // 상태변수
    uint _cnt;
    address _from;
    address _to;
    // 생성자에서 상태변수를 초기화
    constructor (uint cnt, address from, address to) public 
    {
        _cnt = cnt;
        _from = from;
        _to = to;
    }
    function checkCnt() public view returns (uint)
    {
        return _cnt;
    }
}

contract BC_Use
{
    // 컨트렉트 생성
    BasicConstructor bc = new BasicConstructor(10,address(0x123),address(0x456));
    function log() public view returns (uint)
    {
        return bc.checkCnt();
    }
}