// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public favNum;

    function guessMyNum(uint256 _favNum) public {
        favNum = _favNum;
    }

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public People;

    mapping(string => uint) public nameToFavNum;

    function addPerson(string memory _name, uint _favNum) public {
        People.push(Person(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
}
