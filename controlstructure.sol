// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ControlStructures {
    /// @notice Custom error for after-hours time input.
    error AfterHours(uint256 time);

    /// @notice FizzBuzz function:
    /// returns “Fizz” if _number divisible by 3,
    /// “Buzz” if divisible by 5,
    /// “FizzBuzz” if divisible by both 3 and 5,
    /// “Splat” otherwise.
    function fizzBuzz(uint256 _number) public pure returns (string memory) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            return "FizzBuzz";
        } else if (_number % 3 == 0) {
            return "Fizz";
        } else if (_number % 5 == 0) {
            return "Buzz";
        } else {
            return "Splat";
        }
    }

    /// @notice Do Not Disturb function:
    /// Accepts _time and returns a string, or reverts/panics based on rules.
    function doNotDisturb(uint256 _time) public pure returns (string memory) {
        // If time is ≥ 2400, trigger a panic (use assert).
        if (_time >= 2400) {
            assert(false); // This triggers a Panic(uint256) error in Solidity.
        }

        // If time is after 2200 or before 800: revert with custom error AfterHours.
        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time);
        }

        // If time is between 1200 and 1259 inclusive: revert with string message
        if (_time >= 1200 && _time <= 1259) {
            revert("At lunch!");
        }

        // If time is between 800 and 1199 inclusive: "Morning!"
        if (_time >= 800 && _time <= 1199) {
            return "Morning!";
        }

        // If time is between 1300 and 1799 inclusive: "Afternoon!"
        if (_time >= 1300 && _time <= 1799) {
            return "Afternoon!";
        }

        // If time is between 1800 and 2200 inclusive: "Evening!"
        if (_time >= 1800 && _time <= 2200) {
            return "Evening!";
        }

        // Fallback (should not happen if all ranges covered)
        return "";
    }
}
