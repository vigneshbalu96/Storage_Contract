// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {

    uint256  hasFavouriteNumber;
    
    // custom Datatype is used to store the people's Data
    struct person {
        uint256 favouriteNumber;
        string name;
    }
    
    person[] public friendsList;

    // mapping datatype helps to get the people's data with respect to corresponding member.
    mapping(string => uint256) public nameToFavouriteNumber;

    function addFriends(uint256 _favouriteNumber, string memory _name) public {
        friendsList.push(person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function store(uint256 _favouriteNumber) public virtual {
        hasFavouriteNumber=_favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return hasFavouriteNumber;
    }   
}