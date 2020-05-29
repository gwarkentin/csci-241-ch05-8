# csci-241-ch05-8
Color_Matrix

Write a program that displays a single character in all possible combinations of foreground and background colors (16 x16 = 256) with AL: BKGD|FRGD. The colors are numbered from 0 to 15, so you can use a nested loop to generate all possible combinations for foreground (00h to 0Fh) and background (0Xh to FXh). Notice AH must be zero all the time. Use SetTextColor and WriteChar, even with Delay to watch. Run ch05_08.exe and the screen will be like this:

Always make a newline before exit, to avoid something like "Press any key to continue..." appended to the last output.
Resume previous color when done.
Try more use of registers, possible to less or avoid PUSH/POP
