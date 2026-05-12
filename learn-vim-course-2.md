---
author: Eric Nantel
date: DD MMMM YYYY
paging: Slide %d / %d
---

# Learn Vim Course 2

Chapters:
## Registers
## Marks
## Macros
## Jump list
## Quickfix list
## Location list
## Conclusion

_Duration: 30 minutes_

---

## Registers

Command to show current state of registers:
    :registers

So far we have seen we can perform actions, in a buffer, such as
cutting and paste; however what we didn't explain was where we store
temporarily text we cut or use to search occurences. The answer is
registers. There are several registers, starting with the default one,
that is used most of the times. The search register is used when we
search for occurences, for instance, when we use the '*' or '#' or '/'.

You can use registers 'a' to 'z' for pretty much anything you need to cut or paste.
Some registers are reserved for special use-cases (registers '0' to '9', '+', '*', '/', etc.)
In order, to specify a register, you need to prefix an action with "a where 'a' is a valid register name.

Here's an example, in NORMAL mode, using explicit register 'a' to store current line:
"ayy

Here's another example, in NORMAL mode, where we paste from explicit register 'a':
"ap

Note: regardless what register you are using, the default one will contains the latest data,
and possibly register '0' if the latest action performed was Yank.

*Advanced: you may append instead of overwriting a register content by using a _capital_ letter:
    For instance, in NORMAL mode, you may want to append some text to the register 'a':
        "Ay2w

---

## Marks

Command to show current state of marks:
    :marks

Marks are extremely useful to jump fast to specific location within files.
To create a local mark, under the cursor, in NORMAL/VISUAL mode, use m followed by a lower-case letter ('a' to 'z');
To create a global mark, under the cursor, in NORMAL/VISUAL mode, use m followed by a capital-case letter ('A' to 'Z').
A local mark means the mark is within the current file; while a global mark
can be located in a separate file.
For example, in NORMAL mode, you can create a local mark 'b':
    mb
For example, in NORMAL mode, you can create a global mark 'C':
    mC

In order, to jump to a mark's line, you need to use 'a where 'a' is a valid local mark.
In order, to jump to a mark specific row and col, you need to use `a where 'a' is a valid mark.

Note: If a mark already exists, but you create it in a different location, it will simply override it.

*Advanced: Marks jump can be used as motion.
    For example, in NORMAL mode, to delete(cut) from current cursor to a mark's line:
        d'a
    Or, in NORMAL mode, to delete(cut) from current cursor to specific mark row and col:
        d`a

---

## Macros

Macros are basically a recorded sequence of inputs, you would normally do on your keyboard in realtime.
Excepts, you store that sequence into a register ('a' to 'z'), so that you can 'reuse' that sequence later on.
First you need to start recording with qa where 'a' is a valid register.
Then you can type whatever actions, motions, etc.
At last, type q to stop recording your macro.

To 'replay' a macro, use @a where 'a' is a valid register where you stored your macro.

Let's try to record a macro using register 'c':
    In NORMAL mode, type the following:
        qckkq
    Then look at your register 'c' (:registers) and you should see kk as content.
    To replay, in NORMAL/VISUAL mode, do @c and normally your cursor will move upwards 2 lines.

Note: Macros can switch into several modes, call functions, as you need, everything gets recorded until you type q.
One big issue of using macros, is that they can be overriden since they are stored into registers.

---

## Jump list

Command to show current state of jump list:
    :jumps

When navigating using {}, or marks, and perhaps a few Vim motions, we effectively _jump_ the cursor, and Vim
stores those jumps into a jump list. And you can use it, to jump again a previous jump.

To jump backward, in NORMAL mode, in the list:
    * Ctrl-o
To jump forward, in NORMAL mode, in the list:
    * Ctrl-i or Tab

Note: Some Vim motions are not stored into the jump list.

*Advanced: You can prefix the jump backward and forward on that list using a counter:
    For example, in NORMAL Mode:
        3Ctrl-o

---

## Quickfix list

Command to open quickfix list:
    :copen

The quickfix list usually contains diagnostics, issues, etc. managed by plugins.
It allows you to jump to locations (like the jump list).

*Advanced: We won't see it in this course, but lsp plugins will use that quickfix list.

---

## Location list

Command to open location list of current window:
    :lopen

Each opened window, may have a location list, it is similar to how to quickfix list behaves.

---

## Conclusion

In the next course, we will talk about:
* Vim config and plugins
* Neovim config and plugins
However I will keep it simple, there will be an advanced course for programming.

Copyright (c) 2025 Eric Nantel
