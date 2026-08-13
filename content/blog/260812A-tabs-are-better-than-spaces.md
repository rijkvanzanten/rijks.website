---
title: "Tabs are better than spaces"
date: 2026-08-12
---

The discussion of whether to use tabs or spaces for code indentation has been going on for longer than I've been alive. Even in written styleguides from [as early as the mid-eighties](https://archive.adaic.com/docs/style-guide/83style/html/sty-02-02.html) you can find references to the "Use spaces for indentation, not the tab character".

Nowadays spaces are the predominant preference for mainstream IDEs and projects, with code editors like [VS Code](https://code.visualstudio.com/docs/editing/codebasics#_indentation) and [Zed](https://zed.dev/docs/reference/all-settings#hard-tabs) and formatters like [Prettier](https://prettier.io/docs/options#tabs), [Oxfmt](https://oxc.rs/docs/guide/usage/formatter/config-file-reference.html#usetabs), and [Rustfmt](https://rust-lang.github.io/rustfmt/#hard_tabs) defaulting to spaces.

That being said, I haven’t been able to find any conclusive evidence or generally good reason as to why these projects decided spaces are the default. Oftentimes, it boils down to “it was an opinion from the original author and it's not worth switching now”.

The primary reason in favor of spaces I've seen so far has been “Spaces render consistently regardless of software used“. This is of true of course! A tab can be effectively any size, but.. what if that's a good thing?

Code is written for humans, and historically the tools we use to write and edit that code have been very personal and personalized. I might use Zed, you might use VS Code. I might use light mode, you might use dark. To me, tabs vs spaces fit in this same personalization.

The goal of indenting the code in the first place is to make it more legible for humans. Code that is indented is an order of magnitude easier to read. _How much_ code should be visually indented therefore is an accessibility question. Some folk might prefer it 2 spaces short to allow more code to fit in a smaller horizontal space, some might prefer it 4 or even more spaces wide to make the indentation very obvious. I found myself using the odd 3 as the right balance between legibility and conciseness.

At the end of the day, the level of indentation of code should be a user preference, not something that the project enforces. I wouldn't want to force my team to use a certain IDE, I wouldn't want to force my team to use light mode, nor do I don't want to force them to use an indentation of 3 spaces. Tabs give you that flexibility out of the box.
