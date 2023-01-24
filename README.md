Decentralized Health Records Smart Contract
A smart contract that allows for the secure and private storage of medical records on the blockchain.

Features
Add new records
Update records
Get access to records
How to use
Deploy the smart contract on the Ethereum network
Use a web3 wallet such as MetaMask to interact with the contract
Add a new record by calling the addRecord(bytes32 _dataHash) function and providing the data hash of the record.
Update a record by calling the updateRecord(bytes32 _oldDataHash, bytes32 _newDataHash) function and providing the old data hash of the record and the new data hash.
Get access to a record by calling the getRecord(address _owner, bytes32 _dataHash) function and providing the address of the owner and the data hash of the record.
Events
NewRecord: This event is emitted whenever a new record is added. It stores the details of the record such as the owner, and the data hash.
RecordAccess: This event is emitted whenever a record is accessed. It stores the details of the access such as the requester, the owner and the data hash.
Security
It's important to note that this is a simple example and it should be thoroughly tested and audited before deployment. Additionally, you may want to add more functionalities such as access control, versioning, encryption or other security measures.

Requirements
Solidity compiler version 0.8.0 or higher
A web3 wallet such as MetaMask
A testnet or mainnet Ethereum network
Deployment
You can deploy this contract on any Ethereum network using a tool such as Truffle or Remix.

Contribution
If you find any bugs or have suggestions for improvements, please feel free to create an issue or submit a pull request.
