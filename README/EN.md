# percent.lua

A Lua module for representing percentages as objects.
Supports arithmetic operations, comparisons, and string conversion.

## Example:
```lua
local Percent = require("percent")
local p25 = Percent(25)
print(40 + p25) -- 50
print(100 * p25) -- 25
print(0.25 == p25) -- true
```

## How it works:

- `Percent(x)` stores `x` as a %.
- `40 + Percent(25)` → `40 + (25% от 40)`  
- `Percent(50) + 5` → `0.50 + 5 = 5.5`  
- `Percent(50) + Percent(50)` → `0.5 + (50% от 0.5) = 0.75`  
- `100 * Percent(25)` → `100 * 0.25 = 25`  
- `Percent(50) * Percent(50)` → `0.5 * 0.5 = 0.25`  
- Comparisons (`==`, `<`, `<=`) work with numbers and other Percent objects.
- `tostring(Percent(42))` → `"42%"`