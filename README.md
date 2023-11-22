# Student Details Smart Contract

## Overview
This Solidity smart contract effectively manages and stores student details, providing a systematic approach to recording information such as name, age, and gender for each student.

## Features
- **Student Detail Structure**: The contract introduces a `studentDetail` structure, encompassing essential details like name, age, and gender.
- **Storage Mapping**: Student details find storage in a mapping structure, utilizing the student ID as the key and the corresponding details as the associated value.
- **Owner Authorization**: Ensuring secure operations, the contract incorporates a `onlyOwner` modifier, permitting only the contract owner (admin) to execute designated functions.

## Smart Contract Functions

### `constructor()`
- Initializes the contract, designating the deployer's address as the owner.

### `onlyOwner` Modifier
- Confirms that only the contract owner has the authority to invoke specific functions.

### `createStudentDetail(string memory _name, uint _age, string memory _gender) public`
- Generates a new student detail entry, capturing the supplied name, age, and gender.
- Automatically assigns a unique student ID to each entry.

## Usage

1. **Deployment**:
   - Deploy the contract on the Ethereum blockchain, specifying version 0.8.19.

2. **Ownership**:
   - The deployer's address becomes the rightful owner.

3. **Adding Student Details**:
   - Invoke `createStudentDetail` with the student's name, age, and gender.

4. **Accessing Details**:
   - Utilize the `Details` mapping with the student ID to retrieve specific details.

## License
This smart contract operates under the MIT License. Refer to [LICENSE](LICENSE) for comprehensive details.

## SPDX-License-Identifier
SPDX-License-Identifier: MIT