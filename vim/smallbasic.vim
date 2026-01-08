" Vim syntax file
" Language: SmallBASIC
" Maintainer: Converted from Nano rules
" Save as: ~/.vim/syntax/smallbasic.vim

" Add this to your ~/.vim/filetype.vim:
" au BufNewFile,BufRead *.bas set filetype=smallbasic

if exists("b:current_syntax")
  finish
endif

" Make syntax case-insensitive
syn case ignore

" Match filetypes
syntax match smallbasicFile "\.bas$"

" -----------------------------
" Variable names
" syntax match smallbasicVar /\<[A-Z_][A-Za-z0-9_]*[$%&|()]*\>/

" System vars
syntax keyword smallbasicSys COMMAND CWD FALSE HOME NIL MAXINT PI SBVER SELF TRUE XMAX YMAX

" Functions and subs (grouped)
syntax keyword smallbasicFunc ABS ABSMAX ABSMIN ACCESS ACOS ACOSH ACOT ACOTH ACSC ACSCH APPEND ARC ARRAY ASC ASEC ASECH ASIN ASINH AT ATAN ATAN2 ATANH ATN
syntax keyword smallbasicFunc BCS BEEP BGETC BIN BLOAD BPUTC BSAVE
syntax keyword smallbasicFunc CALL CAT CBS CEIL CHAIN CHART CHDIR CHMOD CHOP CHR CIRCLE CLOSE CLS COLOR COPY COS COSH COT COTH CSC CSCH
syntax keyword smallbasicFunc DATE DATEDMY DATEFMT DEG DELAY DELETE DERIV DETERM DIFFEQN DIRWALK DISCLOSE DRAW DRAWPOLY
syntax keyword smallbasicFunc EMPTY ENCLOSE ENV EOF ERASE EXEC EXIST EXIT EXP EXPRSEQ
syntax keyword smallbasicFunc FILES FIX FLOOR FORM FORMAT FRAC FRE FREEFILE
syntax keyword smallbasicFunc HEX
syntax keyword smallbasicFunc IFF IMAGE INKEY INPUT INSERT INSTR INT INTERSECT INVERSE ISARRAY ISDIR ISFILE ISLINK ISMAP ISNUMBER ISSTRING
syntax keyword smallbasicFunc JOIN JULIAN KILL
syntax keyword smallbasicFunc LBOUND LCASE LEFT LEFTOF LEFTOFLAST LEN LINE LINEINPUT LINEQN LINPUT LOCATE LOCK LOF LOG LOG10 LOGPRINT LOWER LTRIM
syntax keyword smallbasicFunc M3APPLY M3IDENT M3ROTATE M3SCALE M3TRANS MAX MID MIN MKDIR
syntax keyword smallbasicFunc NOSOUND
syntax keyword smallbasicFunc OCT OPEN PAINT PAUSE PEN PLAY PLOT POINT POLYAREA POLYCENT POLYEXT POW PRINT PROGLINE PSET PTDISTLN PTDISTSEG PTSIGN
syntax keyword smallbasicFunc RAD READ RECT RENAME REPLACE RESTORE RGB RGBF RIGHT RIGHTOF RIGHTOFLAST RINSTR RMDIR RND ROOT ROUND RTRIM RUN
syntax keyword smallbasicFunc SEARCH SEC SECH SEEK SEGCOS SEGLEN SEGSIN SEQ SGN SHOWPAGE SIN SINH SINPUT SORT SOUND SPACE SPC SPLIT SPRINT SQR SQUEEZE STATMEAN STATMEANDEV STATMEDIAN STATSPREADP STATSPREADS STATSTD STKDUMP STR STRING SUM SUMSQ SWAP
syntax keyword smallbasicFunc TAB TAN TANH TEXTHEIGHT TEXTWIDTH TICKS TIME TIMEHMS TIMER TIMESTAMP TLOAD TRANSLATE TRANSPOSE TRIM TSAVE TXTH TXTW
syntax keyword smallbasicFunc UBOUND UCASE UPPER
syntax keyword smallbasicFunc VAL VIEW
syntax keyword smallbasicFunc WEEKDAY WINDOW WRITE
syntax keyword smallbasicFunc XPOS YPOS

" Special commands
syntax keyword smallbasicCmd AS BG IN LIKE ON USE USG USING

" Variable declaration
syntax keyword smallbasicDecl BYREF CONST DIM LOCAL LET REDIM

" Units, data, goto...
syntax keyword smallbasicUnit DATA EXPORT GOSUB GOTO IMPORT INCLUDE LABEL OPTION RANDOMIZE UNIT

" Loops, conditionals, func/sub
syntax keyword smallbasicCond CASE CATCH DECLARE DEF DEFINEKEY DO END TRY ENDIF ELIF ELSE ELSEIF FI FOR FUNC IF NEXT REPEAT RETURN SELECT SUB STEP THEN TO THROW UNTIL WEND WHILE

" Stop commands
syntax keyword smallbasicStop STOP TRON TROFF

" Logic and bit operators
syntax keyword smallbasicLogic AND BAND BOR EQV IMP LSHIFT NAND NOR OR RSHIFT XNOR XOR

" Operators
syntax match smallbasicOp "[+*^=<>/-]"
syntax keyword smallbasicOp MOD MDL
syntax match smallbasicOpSpecial "[@~!]"

" Numbers
" Octal (0o123 or 0123)
syntax match smallbasicNumber /\<0o\?[0-7]\+\>/
" Hexadecimal (0x1A2F)
syntax match smallbasicNumber /\<0x[0-9A-Fa-f]\+\>/
" Binary (0b1010)
syntax match smallbasicNumber /\<0b[01]\+\>/
" Decimal
syntax match smallbasicNumber /\<[0-9]\+\>/

" Parentheses and brackets
syntax match smallbasicParen "[(){}[\]]"

" Strings
syntax match smallbasicString /"[^"]*"/
syntax match smallbasicString /<[^= ]*>/

" Comments
syntax match smallbasicComment /'.*$/
syntax match smallbasicComment /REM.*$/
syntax match smallbasicComment /!.*$/

" Shebang
syntax match smallbasicShebang /^\#\!.*$/

" Reminders
syntax match smallbasicTodo /\<\(FIXME\|TODO\|XXX\)\>/

" -----------------------------
" Highlight groups
highlight link smallbasicVar Identifier
highlight link smallbasicSys Constant
highlight link smallbasicFunc Function
highlight link smallbasicCmd Statement
highlight link smallbasicDecl Type
highlight link smallbasicUnit PreProc
highlight link smallbasicCond Conditional
highlight link smallbasicStop Error
highlight link smallbasicLogic Operator
highlight link smallbasicOp Operator
highlight link smallbasicOpSpecial Special
highlight link smallbasicNumber Number
highlight link smallbasicParen Delimiter
highlight link smallbasicString String
highlight link smallbasicComment Comment
highlight link smallbasicShebang PreProc
highlight link smallbasicTodo Todo

let b:current_syntax = "smallbasic"
