pragma ton-solidity >= 0.45.0;
pragma AbiHeader expire;

contract Calculator {

    constructor() public 
    {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    function addition (int x, int y) public pure returns (int)
    {
        // tvm.accept();
        return x + y;
    }

    function subtraction (int x, int y) public pure returns (int)
    {
        // tvm.accept();
        return x - y;
    }

    function multiplication (int x, int y) public pure returns (int) 
    {
        // tvm.accept();
        return x * y;
    }

    function division (int x, int y) public pure returns (int)
    {
        // tvm.accept();
        return x / y;
    }
}