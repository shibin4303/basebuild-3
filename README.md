# ⚙️ ControlStructures Solidity Contract

A Solidity exercise designed to practice using **if/else logic**, **custom errors**, and **string return handling** in smart contracts.

---

## 🎯 Objective

Create a contract named **`ControlStructures`** that demonstrates conditional control flows in Solidity through two main functions.

---

## 🧱 Contract Overview

### 1️⃣ Smart Contract FizzBuzz

Create a function called **`fizzBuzz(uint _number)`** that returns a `string memory` according to the following rules:

| Condition | Return Value |
|------------|---------------|
| Divisible by 3 | `"Fizz"` |
| Divisible by 5 | `"Buzz"` |
| Divisible by 3 and 5 | `"FizzBuzz"` |
| None of the above | `"Splat"` |

> 🧠 Hint: Use modulo (`%`) to check divisibility.

---

### 2️⃣ Do Not Disturb

Create a function called **`doNotDisturb(uint _time)`** that returns a `string memory` message based on the time of day.  

Follow these rules carefully:

| Condition | Behavior |
|------------|-----------|
| `_time >= 2400` | Trigger a **panic** |
| `_time > 2200` or `_time < 800` | Revert with custom error `AfterHours(uint _time)` |
| `_time` between 1200–1259 | Revert with string `"At lunch!"` |
| `_time` between 800–1199 | Return `"Morning!"` |
| `_time` between 1300–1799 | Return `"Afternoon!"` |
| `_time` between 1800–2200 | Return `"Evening!"` |

> ⚡ The function uses different revert methods — **custom error**, **string message**, and **panic** — to demonstrate various Solidity error-handling types.

---

## 🪜 Instructions

### 1️⃣ Open Remix IDE  
Visit [https://remix.ethereum.org](https://remix.ethereum.org)

### 2️⃣ Create File  
Name it `ControlStructures.sol`

### 3️⃣ Implement Code  
Follow the contract and function specifications above.

### 4️⃣ Compile  
- Use Solidity version **^0.8.x**
- Ensure there are **no warnings or errors**

### 5️⃣ Deploy  
- Deploy the contract to a local or test environment

### 6️⃣ Test  
- Call `fizzBuzz()` with several numbers (3, 5, 15, others)  
- Call `doNotDisturb()` with values like `700`, `1230`, `1500`, `2300`, etc.  
- Observe the return values, reverts, and panics.

---

## 🧩 Key Concepts Practiced

- Conditional control flow (`if`, `else if`, `else`)  
- String handling in Solidity  
- Custom errors and revert conditions  
- Panic error demonstration  
- Function testing and behavior verification  

---

> 🧠 *This exercise helps build solid understanding of Solidity’s control flow, branching, and error-handling patterns.*
