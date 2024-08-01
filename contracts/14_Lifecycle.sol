// Problem Statement
// Write a function getStage(), which should take no. of months as a parameter and return the user its lifecycle stage. Stages can be:
// Infant (<1 year)
// Toddler (1-2 years)
// Child (3-12 years)
// TeenAger (13-19 years)
// Adult (20-60 years, just accept it 😬)
// Old (>60 years)
// Use enum for stage listing.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Lifecycle {
    enum Stage {
        Infant,
        Toddler,
        Child,
        Teen,
        Adult,
        Old
    }

    function getStage(uint months) public pure returns (Stage) {
        if (months > 0 && months <= 12) return Stage.Infant;
        else if (months > 12 && months <= 24) return Stage.Toddler;
        else if (months > 24 && months <= 155) return Stage.Child;
        else if (months > 156 && months <= 228) return Stage.Teen;
        else if (months > 228 && months <= 720) return Stage.Adult;
        else return Stage.Old;
    }
}
