// SPDX-License-Identifier: MIT
 pragma solidity 0.8.19;

 contract studentDetails {
     struct studentDetail{
         string name;
         uint age;
         string gender;
     }
  
     mapping(uint => studentDetail) public Details;
     address owner;

     uint public _ID;
     constructor() {
         owner = msg.sender;
     }
     modifier onlyOwner() {
         require (
             msg.sender == owner,
             "only admin can call this"
             );
             _;
     }

   
     function createStudentDetail(string memory _name, uint _age, string memory _gender) public {
    _ID++;
    studentDetail storage student = Details[_ID];
    student.name = _name;
    student.age = _age;
    student.gender = _gender;
}
   
 } 