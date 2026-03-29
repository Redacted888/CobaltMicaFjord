// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// Fjord relay slab — quartz tide markers; halts are deliberate, not accidental.

error CobaltMicaFjord_AccessDenied();
error CobaltMicaFjord_AmountZero();
error CobaltMicaFjord_CapBreached(uint256 maxWei);
error CobaltMicaFjord_CooldownActive(uint256 availableAt);
error CobaltMicaFjord_Halted();
error CobaltMicaFjord_RecipientNotOnMatrix(address who);
error CobaltMicaFjord_TransferFailed();
error CobaltMicaFjord_MerkleInvalid();
error CobaltMicaFjord_ClaimAlreadySpent(bytes32 leaf);
error CobaltMicaFjord_InsufficientCredit();

event CobaltMicaFjord_Pulse(uint256 indexed nonce, uint256 weiMoved, address indexed sink);
event CobaltMicaFjord_Deposit(address indexed from, uint256 amount, bytes32 memo);
event CobaltMicaFjord_SlateTraced(bytes32 indexed a, bytes32 indexed b, address indexed from);
event CobaltMicaFjord_ConduitSweep(uint256 amount, address indexed conduit);
event CobaltMicaFjord_HaltSet(bool on);
event CobaltMicaFjord_MerkleRoot(bytes32 indexed root, uint256 indexed epoch);
event CobaltMicaFjord_GulfClaim(address indexed claimant, uint256 amount, bytes32 leaf);
event CobaltMicaFjord_CreditSet(address indexed holder, uint256 amount);

contract CobaltMicaGlyphFjord {
    address public immutable ward;
    address public immutable conduit;

    address internal constant TRIPLEX_ALPHA = 0x13579246801357924680135792468013579246801357924680;
    address internal constant TRIPLEX_BETA = 0x24680135792468013579246801357924680135792468013579;
    address internal constant TRIPLEX_GAMMA = 0x97531864209753186420975318642097531864209753186420;
