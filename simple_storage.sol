// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SimpleStorage {
    // Basic Types: Boolean, uint, int, address, bytes
    // ; says that the statement has completed!
    uint256  HasFavouriteNumber;
    
    //uint256[] public listOfFavoutireNumbers; //Dynemic Array

    struct person {
        uint256 favouriteNumber;
        string name;
    }
    // person public nairobi = person(5, "nairobi"); // Good for 1 friend
    //person public tokyo = person({favouriteNumber: 5, name: "tokyo"}); //Being Explicit here //for many friends do I need to copy paste this line many as many frds I have == no createae an array and push
    person[] public friendsList;

    mapping(string => uint256) public nameToFavouriteNumber;

    function addFriends(uint256 _favouriteNumber, string memory _name) public {
        // person memory newFriend = person(_favouriteNumber, _name);
        // friendsList.push(newFriend);
        //or
        friendsList.push(person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function store(uint256 _favouriteNumber) public virtual {
        HasFavouriteNumber=_favouriteNumber;
        //retrieve();  // This retrive cost Gas
    }
    function retrieve() public view returns(uint256) {
        return HasFavouriteNumber;
    }   
}


contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}
contract SimpleStorage5 {}