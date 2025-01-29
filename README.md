# Lua pairs Iterator Unexpected Behavior

This repository demonstrates an uncommon bug related to Lua's `pairs` iterator when used with nested tables that are modified during iteration.  The `pairs` iterator, under certain conditions, might not visit all elements if the table structure changes within the loop.

The `bug.lua` file shows the problematic code.  `bugSolution.lua` provides a corrected approach, which avoids modifying the table during iteration or utilizes a safer iteration method.

## Issue:

The issue arises when a nested table is modified within the iteration of `pairs`, potentially skipping elements or creating infinite loops. This is because `pairs` relies on an internal mechanism to track iteration, which can be disrupted by structural changes to the table.

## Solution:

The solution utilizes a copy of the table to prevent modifying the original table during iteration. This avoids interrupting the `pairs` iterator.