pragma solidity ^0.8.28;

contract Migrations {
    address public immutable owner;
    uint256 public lastCompletedMigration;

    event MigrationCompleted(uint256 migrationId);
    event Upgraded(address indexed newContract);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    function setCompleted(
        uint256 completed
    ) external onlyOwner {
        lastCompletedMigration = completed;

        emit MigrationCompleted(completed);
    }

    function upgrade(
        address newAddress
    ) external onlyOwner {
        Migrations upgraded = Migrations(newAddress);

        upgraded.setCompleted(lastCompletedMigration);

        emit Upgraded(newAddress);
    }
}
