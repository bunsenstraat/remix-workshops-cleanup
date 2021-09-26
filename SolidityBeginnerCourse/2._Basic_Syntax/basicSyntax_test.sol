pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./basicSyntax.sol";

contract MyTest {
  HelloSolidity foo;

  function beforeEach() public {
    foo = new HelloSolidity();
  }
}