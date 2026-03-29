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

