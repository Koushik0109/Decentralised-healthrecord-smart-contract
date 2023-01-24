pragma solidity ^0.8.0;

contract HealthRecords {
    struct Record {
        address owner;
        bytes32 dataHash;
    }
    mapping(address => mapping(bytes32 => Record)) public records;
    event NewRecord(address owner, bytes32 dataHash);
    event RecordAccess(address requester, address owner, bytes32 dataHash);

    function addRecord(bytes32 _dataHash) public {
        require(records[msg.sender][_dataHash].dataHash == bytes32(0), "Record already exists.");
        records[msg.sender][_dataHash] = Record(msg.sender, _dataHash);
        emit NewRecord(msg.sender, _dataHash);
    }

    function updateRecord(bytes32 _oldDataHash, bytes32 _newDataHash) public {
        require(records[msg.sender][_oldDataHash].dataHash != bytes32(0), "Record does not exist.");
        records[msg.sender][_newDataHash] = Record(msg.sender, _newDataHash);
        delete records[msg.sender][_oldDataHash];
    }

    function getRecord(address _owner, bytes32 _dataHash) public view returns (address, bytes32) {
        require(records[_owner][_dataHash].dataHash != bytes32(0), "Record does not exist.");
        emit RecordAccess(msg.sender, _owner, _dataHash);
        return (records[_owner][_dataHash].owner, records[_owner][_dataHash].dataHash);
    }
}
