// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TestBytesNative {
    struct Data {
        bytes2 bytes2Field;
        bytes10 bytes10Field;
        bytes17 bytes17Field;
        bytes31 bytes31Field;
    }

    mapping(address => Data) public contractsData;

    function getTestBytesBytes2(address key) external view returns (bytes2) {
        return contractsData[key].bytes2Field;
    }

    function getTestBytesBytes10(address key) external view returns (bytes10) {
        return contractsData[key].bytes10Field;
    }

    function getTestBytesBytes17(address key) external view returns (bytes17) {
        return contractsData[key].bytes17Field;
    }

    function getTestBytesBytes31(address key) external view returns (bytes31) {
        return contractsData[key].bytes31Field;
    }

    function getBytes2FromBytes32(bytes32 value) external pure returns (bytes2) {
        return bytes2(value);
    }

    function getBytes10FromBytes32(bytes32 value) external pure returns (bytes10) {
        return bytes10(value);
    }

    function getBytes17FromBytes32(bytes32 value) external pure returns (bytes17) {
        return bytes17(value);
    }

    function getBytes31FromBytes32(bytes32 value) external pure returns (bytes31) {
        return bytes31(value);
    }

    function storeTestBytes(address key, bytes32 value) external {
        contractsData[key] = Data({
            bytes2Field: bytes2(value),
            bytes10Field: bytes10(value),
            bytes17Field: bytes17(value),
            bytes31Field: bytes31(value)
        });
    }
}
