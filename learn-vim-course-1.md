---
author: Eric Nantel
date: DD MMMM YYYY
paging: Slide %d / %d
---

# Learn Vim Course 1

Chapters:
## Introducing myself
## Whom Vim is for ?
## What can Vim do ?
## How to enter Vim ?
## How to exit Vim ?
## Vim Modes
## Vim Navigation
## Vim Actions
## Vim Motions
## Vim Commands
## Conclusion

_Duration: 45 minutes_

---

## Introducing myself

My name is Eric Nantel.

I am a passionate of video games, a programmer and a FOSS enthusiast.
I enjoy sharing my knowledge on things I use myself.

About a year ago I discovered Vim. Because I was unconsciously looking for it.

I learned so many tools so far, but Vim can rule them all once you master it.

It is that great. It changed my workflow for the best.

Indeed, Vim has a steep learning curve at the beginning, but I would compare it to when you first learned typing a keyboard without looking.
It will take you days, weeks or months to get used to. 

---

## Whom Vim is for ?

Vim is mainly for devs, admins, analysts, novelists.

Vim is an extendable and fully customizable modal text-editor for the Terminal, fast and lightweight, completely free and available on most desktop environments and servers.
With Vim, you can say goodbye to your mouse, paid softwares and malwares.

Most importantly, Vim will boost your productivity when typing text, such as code.

If you were using different softwares for different desktop environments or operating systems, then Vim can be the solution as it is extremely portable.

If you feel you have 'plateau' or simply frustated that you cannot type code as fast as you hope, then Vim is definitely for you.

If you want to move around files, code functions or find pretty much anything within your project, then Vim is really waiting for you.

---

## What can Vim do ?

* Vim can be configured as you want.
* You can open code projects with Vim.
* You can debug applications with Vim.
* You can transform Vim into an IDE.
* You can remap Vim default keybinds.
* You can edit text very fast with Vim.
* You can jump around Vim very efficiently.
* You can manage files and folders with Vim.
* You can integrate plugins to Vim.
* You can write you own Vim plugins.
* You can run Vim inside a SSH or TMUX Session.
* Vim can support every programming languages.
* Vim works on pretty much anything (including old PCs).
* Vim can do much more than any other alternatives.

---

## How to enter Vim ?

Open a Terminal, type vim then press 'Enter'.

Alternatively, you can type vim then a file_name then press 'Enter'.

Also, you may type vim . then press 'Enter'.

---

## How to exit Vim ?

Press 'Escape' then ':' then 'q' then 'Enter'.

Alternatively, press 'CTRL' + 'z' then 'Enter'.

---

## Vim Modes (1/2)

As I mentionned previously, Vim is a modal text-editor.

Usually, when you open an IDE or any text-editor, you can start writing text.

Vim works a bit differently. By default Vim launches in Normal Mode.

To start writing text, you will need to switch to Insert Mode.

* To switch to Normal Mode from any Mode, press 'ESCAPE'.
* To switch to Normal Mode from Insert Mode, press 'CTRL' + 'c'.
* To switch to Insert Mode from Normal Mode, press 'i'.
* To switch to Visual Mode from Normal Mode, press 'v'.
* To switch to Visual Line Mode from Normal Mode, press 'SHIFT' + 'v'.
* To switch to Visual Block Mode from Normal Mode, press 'CTRL' + 'v' or 'CTRL' + 'q'.
* To switch to Replace Mode from Normal Mode, press 'SHIFT' + 'r'.

N.B. There are some more actions that can switch to Insert Mode from Normal Mode.

N.B. In Visual Modes, We automatically return to Normal Mode After Completing an Action with or without a Motion.

---

## Vim Modes (2/2)

A few things you can do in each Modes:

* In Insert Mode, you can add or remove characters.
* In Insert Mode, you can add or remove lines.
* In Insert Mode, you can navigate using arrow keys.
* In Replace Mode, you replace characters.
* In Replace Mode, you can add new lines.
* In Replace Mode, you can navigate using arrow keys.
* In Normal Mode, you can do navigation, actions, motions and commands.
* In Visual Mode, you can select text.
* In Visual Mode, you can do navigation, actions, motions and commands.
* In Visual Line Mode, you can select lines.
* In Visual Line Mode, you can do navigation, actions, motions and commands.
* In Visual Block Mode, you can select text block.
* In Visual Block Mode, you can do navigation, actions, motions and commands.

---

## Vim Navigation (1/5)

Vim's way to navigate the cursor is using the following keys:
* Press 'h' to move cursor left
* Press 'j' to move cursor down
* Press 'k' to move cursor up
* Press 'l' to move cursor right

N.B. But you may use arrow keys too.

You can also navigate using these:
* 'w' moves cursor to next word
* 'b' moves cursor backward to beginning of word
* 'e' moves cursor forward to ending of word
* '{' moves cursor to previous paragraph
* '}' moves cursor to next paragraph

Words, Brackets and Paragraphs are called Vim Text Objects.

---

## Vim Navigation (2/5)

To jump cursor at the beginning of the file:
* Press 'gg'

To jump cursor at the end of the file:
* Press 'SHIFT' + 'g'

To jump cursor to a specific line in the file:
* Press line_number + 'SHIFT' + 'g'
* Press line_number + 'gg'

---

## Vim Navigation (3/5)

To jump cursor to first occurence of character after cursor:
* Press 'f' + character

To jump cursor to first occurence of character before cursor:
* Press 'SHIFT' + 'f' + character

To jump cursor to character before first occurence after cursor:
* Press 't' + character

To jump cursor to character before first occurence before cursor:
* Press 'SHIFT' + 't' + character

To repeat previous navigation with 'f', 'SHIFT' + 'f', 't', 'SHIFT' + 't' in forward:
* Press ';'

To repeat previous navigation with 'f', 'SHIFT' + 'f', 't', 'SHIFT' + 't' in backward:
* Press ','

---

## Vim Navigation (4/5)

To jump cursor to next search occurence of word under cursor:
* Press '*'

To jump cursor to next search occurence in the file:
* Press 'n'

To jump cursor to previous search occurence in the file:
* Press 'SHIFT' + 'n'

---

## Vim Navigation (5/5)

To jump cursor on the page:
* Press 'CTRL' + 'b' to jump up 1 page
* Press 'CTRL' + 'f' to jump down 1 page
* Press 'CTRL' + 'u' to jump up half page
* Press 'CTRL' + 'd' to jump down half page
* Press 'SHIFT' + 'm' to jump middle of page

To scroll without moving the cursor:
* Press 'CTRL' + 'e' to scroll down by 1 line
* Press 'CTRL' + 'y' to scroll up by 1 line

---

## Vim Actions (1/4)

Remember what each letter means:
* 'i' means Insert
* 'a' means Append
* 'y' means Yank (copy)
* 'd' means Delete (cut)
* 'c' means Change (cut + insert)
* 'p' means Paste
* 'x' means Remove (delete)
* 's' means Substitute (delete + insert)
* 'r' means Replace
* 'u' means Undo

This is an important process, to catch up quickly Vim Actions.

---

## Vim Actions (2/4)

* Press 'ESCAPE' to switch to Normal Mode or cancel an Action, Motion or Command.
* Press 'i' to switch to Insert Mode.
* Press 'SHIFT' + 'i' to move at beginning of the line then switch to Insert Mode.
* Press 'a' to append cursor then switch to Insert Mode.
* Press 'SHIFT' + 'a' to append cursor to end of line then switch to Insert Mode.
* Press 'x' to delete character under cursor.
* Press 'SHIFT' + 'x' to delete character before cursor.
* Press 's' to delete character under cursor then switch to Insert Mode.
* Press 'r' then type a character to replace character under cursor.
* Press 'd' before or after a Motion to delete using Motion.
* Press 'dd' to delete current line.
* Press 'SHIFT' + 'd' to delete from cursor to end of line.
* Press 'c' before or after a Motion to delete using Motion then switch to Insert Mode.
* press 'cc' to delete current line then switch to Insert Mode.
* Press 'SHIFT' + 'c' to delete from cursor to end of line then switch to Insert Mode.
* Press 'y' before or after a Motion to copy using Motion.
* Press 'yy' to copy current line.
* Press 'SHIFT' + 'y' to copy from cursor to end of line.
* Press 'p' to paste after cursor.
* Press 'SHIFT' + 'p' to paste before cursor.

---

## Vim Actions (3/4)

* Press 'SHIFT' + 's' to delete current line then switch to Insert Mode.
* Press 'o' to add a new line below cursor, move cursor down then switch to Insert Mode.
* Press 'SHIFT' + 'o' to add a new line above cursor, move cursor up then switch to Insert Mode.
* Press '~' to toggle a character between lower and upper case.
* Press 'CTRL' + 'a' to increment number under or after cursor.
* Press 'CTRL' + 'x' to decrement number under or after cursor.
* Press '=' before or after a Motion to indent using Motion.
* Press '==' to indent current line.
* Press 'SHIFT' + 'j' to join line below cursor with current line.
* Press 'u' after text selection in Visual Modes, to lower case.
* Press 'SHIFT' + 'u' after text selection in Visual Modes, to upper case.
* Press '<<' to shift text left on current line (similar to pressing 'SHIFT' + 'TAB' in Insert Mode) in Normal Mode.
* Press '>>' to shift text right on current line (similar to pressing 'TAB' in Insert Mode) in Normal Mode.
* Press '<' to shift selected text line or block to the left in Visual Modes.
* Press '>' to shift selected text line or block to the right in Visual Modes.
* Press 'CTRL' + 'c' to exit Insert Mode and Enter Normal Mode.

---

## Vim Actions (4/4)

Most Actions, can be prefixed by a Count Number, which tells how many times we want to repeat the Action.

Examples in Normal Mode:
* If you type '100' + 'p'. That means we want to paste 100 times after cursor, what we cut.
* If you type '3' + 'x'. That means we want to remove 3 characters after the cursor.
* If you type '4' + 'r' + '3'. That means we want to replace 4 characters after the cursor by '3'.

Important actions to know that don't need a count prefix:
* 'SHIFT' + 'i' Moves cursor at beginning of line then switch to Insert Mode.
* 'SHIFT' + 'a' Moves cursor at end of line then switch to Insert Mode.
* 'SHIFT' + 's' Deletes current line then switch to Insert Mode.
* 'SHIFT' + 'c' Deletes from cursor to end of line then switch to Insert Mode.
* 'SHIFT' + 'd' Deletes from cursor to end of line.

---

## Vim Motions (1/4)

We have previously seen Vim Navigation 'h', 'j', 'k', 'l'.

And Vim Text Objects like Words, Brackets and Paragraphs.

Those can be prefixed by a Count Number, which tells how many times we want to repeat the Navigation.

Examples in Normal Mode:
* If you type '6' + 'j'. That means we move the cursor down by 6 lines.
* If you type '1' + 'h'. That means we move the cursor left by 1 character.
* If you type '4' + 'w'. That means we move the cursor right by 4 words.
* If you type '2' + '{'. That means we move the cursor 2 paragraphs above cursor.

Important motions to know that don't need a count prefix:
* '0' moves cursor to beginning of the line.
* '_' moves cursor to first non-blank character of the line.
* '^^' moves cursor to first non-blank character of the line.
* '$' moves cursor to end of the line.
* '%' toggles cursor between matching brackets ({}, [], []).

---

## Vim Motions (2/4)

What you need to understand is that simply using Vim Navigation with or without a count prefix, will only move the cursor in Normal Mode.

In Visual Modes, if you start using Vim Navigation you will notice it selects text from initial cursor position to the current position.

But what actually happens when we use Vim Navigation is we perform a Vim Motion, which is like selecting text between two cursor positions.

A Vim Motion can be combined with a Vim Action.

In Normal Mode, you can type a Vim Action followed by a Vim Motion.

In Visual Modes, you can type a Vim Motion followed by a Vim Action.

In case you wonder, why we need Visual Modes, the reason is simple. Sometimes what we want to select as Vim Motion is complex. For instance, it could be a paragraph and half.

---

## Vim Motions (3/4)

Examples in Normal Mode:
* If you type 'd' + '6' + 'w'. That means we delete 6 words forward.
* If you type 'y' + '2' + 'b'. That means we copy 2 words backward.
* If you type 'c' + '3' + 'j'. That means we delete current line and 3 lines below cursor then switch to Insert Mode.
* If you type '2' + 'd' + '5' + 'j'. That means we delete current line then delete 2 times 5 lines below cursor.
* If you type 'c' + 't' + '('. That means we delete from current cursor position till we find '(' then switch to Insert Mode.
* If you type 'd' + '0'. That means we delete from current cursor position to beginning of the line.
* If you type 'y' + '%'. That means copy matching brackets and what's inside. 

Important to know, some actions don't need Motion because they are kind of already, or because they don't support Up and Down Motions.
However, that might not be the case in Visual Modes. For instance, 'x' deletes a character in Normal Mode and it doesn't need to be combined with a Motion since it is moving forward; although in Visual Modes, 'x' works as 'd'.

Paste is another Vim Action that doesn't require a Motion.

---

## Vim Motions (4/4)

There are additional Vim Motions, you need to know:
* i Means inside
* a Means around

However those need to be combined with a text object.
For instance, here are a few additional Vim Motions:
* ip Means inside paragraph
* ap Means around paragraph
* iw Means inside words
* i{ or i} Means inside curly brackets
* a[ or a] Means around square brackets
* i( or i) Means inside parenthesis
* ib Means inside parenthesis
* iB Means inside curly brackets
* it Means inside <> tags

And you can also prefix these Vim Motions with a Count Number.

Examples in Normal Mode:
* If you type 'd' + 'ap'. That means delete around paragraph.
* If you type 'd' + '2' + 'ip'. That means delete inside 2 paragraphs.
* If you type 'd' + 'iw'. That means delete inside word.
* If you type 'c' + 'i)'. That means delete inside parenthesis then switch to Insert Mode.

---

## Vim Commands (1/2)

Vim has some builtin commands, but you can also run custom ones.

To enter a command, you need to either be in Normal or Visual Mode, then:
* Press ':' followed by the command then press 'Enter' to execute.

Important commands to know:
* ':q' to close current file.
* ':q!' to discard changes and close current file.
* ':qa' to close all opened files and exit Vim.
* ':w' to write changes (save) to current file.
* ':wq' to write changes and close current file.
* ':wqa' to write changes to current file and exit Vim.
* ':e' to edit current or new file.
* ':help ' followed by a Vim tag.
* ':set ' followed by a Vim option.
* ':colorscheme ' followed by a Vim color.
* ':undo' to undo last change.
* ':redo' to redo last change.
* ':split' to split current file.
* ':line_number' where line_number is where to jump in current file.

---

## Vim Commands (2/2)

To enter a search command, you need to either be in Normal or Visual Mode, then:
* Press '/' followed by the word, or regex you are looking for then press 'Enter'.
* Press '*' to start searching word under cursor. No need to press 'Enter'.

Useful default Vim keybinds for commands:
* Press 'u' to undo in Normal Mode.
* Press 'CTRL' + 'r' to redo in Normal Mode.
* Press 'CTLR' + 'z' to exit Vim in Normal or Visual Mode.

---

## Conclusion

In the next course, we might talk about:
* Config, Keybinds and Plugins
* Registers
* Marks
* Macros

Copyright (c) 2025 Eric Nantel
