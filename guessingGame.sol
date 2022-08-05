pragma solidity >=0.5.0 <0.9.0;

contract GuessingGame {

  uint private randomNum;
  uint private tries = 0;

  constructor() public {
      randomNum = uint(blockhash(block.number-1)) % 100;
  }

  function createRandom() public {
        randomNum = uint(blockhash(block.number-1)) % 100;
  }

  function message() public {
    tries++;
  }

  function guess(uint num) public view returns (string memory) {
    int diff = int(num) - int(randomNum);
    if (diff == 0) {
        return "Correct! You got it in x tries!";
    } else if (diff > 0) {
        return "Wrong! Guess lower!";
    } else {
        return "Wrong! Guess higher!";
    }
  }


}
